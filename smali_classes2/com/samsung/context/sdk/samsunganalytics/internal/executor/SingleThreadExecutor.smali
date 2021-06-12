.class public Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;
    .locals 1

    .line 40
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;-><init>()V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;

    .line 44
    :cond_0
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V
    .locals 2

    .line 29
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
