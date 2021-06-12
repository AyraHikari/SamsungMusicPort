.class public final Lcom/google/android/gms/internal/zzahh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "Default"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahh;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/16 v1, 0x14

    const/16 v2, 0x14

    const-wide/16 v3, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/google/android/gms/internal/zzahh;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v15}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v1, "Loader"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzahh;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v16

    const/4 v10, 0x5

    const/4 v11, 0x5

    const-wide/16 v12, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/android/gms/internal/zzahh;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v0, Lcom/google/android/gms/internal/zzahh;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sget-object v0, Lcom/google/android/gms/internal/zzahh;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public static a(ILjava/lang/Runnable;)Lcom/google/android/gms/internal/zzakv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/internal/zzakv<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/zzahh;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/google/android/gms/internal/zzahi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzahi;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzahh;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/zzahh;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/google/android/gms/internal/zzahj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzahj;-><init>(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzakv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/internal/zzakv<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzahh;->a(ILjava/lang/Runnable;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzakv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/zzakv<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzalf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/zzahk;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/zzahk;-><init>(Lcom/google/android/gms/internal/zzalf;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/zzahl;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/zzahl;-><init>(Lcom/google/android/gms/internal/zzalf;Ljava/util/concurrent/Future;)V

    sget-object p0, Lcom/google/android/gms/internal/zzala;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/internal/zzalf;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Thread execution is rejected."

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzalf;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzahm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzahm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
