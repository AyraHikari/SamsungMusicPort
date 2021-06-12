.class Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;

.field final synthetic b:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;

    invoke-interface {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;->a()V

    .line 33
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;

    invoke-interface {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;->b()I

    return-void
.end method
