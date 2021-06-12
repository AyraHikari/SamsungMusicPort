.class public final Lcom/google/android/gms/internal/zzakl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/zzaku<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaku;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaku;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/zzakv;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzakv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzakv<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/zzakv<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzalf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Ljava/util/concurrent/Future;)V

    new-instance v1, Lcom/google/android/gms/internal/zzakp;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzakp;-><init>(Lcom/google/android/gms/internal/zzalf;)V

    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzalf;)V

    new-instance p0, Lcom/google/android/gms/internal/zzakq;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzakq;-><init>(Ljava/util/concurrent/Future;)V

    sget-object p1, Lcom/google/android/gms/internal/zzala;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/zzalf;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzakv<",
            "TA;>;",
            "Lcom/google/android/gms/internal/zzakg<",
            "-TA;+TB;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/zzakv<",
            "TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzalf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzako;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/zzako;-><init>(Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/internal/zzakg;Lcom/google/android/gms/internal/zzakv;)V

    invoke-interface {p0, v1, p2}, Lcom/google/android/gms/internal/zzakv;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakh;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzakv<",
            "TA;>;",
            "Lcom/google/android/gms/internal/zzakh<",
            "TA;TB;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/zzakv<",
            "TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzalf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzakn;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/zzakn;-><init>(Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/internal/zzakh;Lcom/google/android/gms/internal/zzakv;)V

    invoke-interface {p0, v1, p2}, Lcom/google/android/gms/internal/zzakv;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/zzakv;Ljava/lang/Class;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/android/gms/internal/zzakv<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/zzakg<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/zzakv<",
            "TV;>;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/gms/internal/zzalf;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    invoke-static {v6, p0}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Ljava/util/concurrent/Future;)V

    new-instance v7, Lcom/google/android/gms/internal/zzakr;

    move-object v0, v7

    move-object v1, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzakr;-><init>(Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/internal/zzakv;Ljava/lang/Class;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)V

    sget-object p1, Lcom/google/android/gms/internal/zzala;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v7, p1}, Lcom/google/android/gms/internal/zzakv;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v6
.end method

.method public static a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zznh;->bl:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string p0, "Error waiting for future."

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object p0

    const-string v0, "Futures.resolveFuture"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object p1

    :catch_1
    move-exception v1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string p0, "InterruptedException caught while resolving future."

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public static a(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string p0, "Error waiting for future."

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object p0

    const-string p3, "Futures.resolveFuture"

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object p1

    :catch_1
    move-exception p2

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string p0, "InterruptedException caught while resolving future."

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzaki;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzakv<",
            "TV;>;",
            "Lcom/google/android/gms/internal/zzaki<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzakm;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/zzakm;-><init>(Lcom/google/android/gms/internal/zzaki;Lcom/google/android/gms/internal/zzakv;)V

    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/zzakv;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzalf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzakv<",
            "+TV;>;",
            "Lcom/google/android/gms/internal/zzalf<",
            "TV;>;)V"
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Ljava/util/concurrent/Future;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaks;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/zzaks;-><init>(Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/internal/zzakv;)V

    sget-object p1, Lcom/google/android/gms/internal/zzala;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/zzakv;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/zzakv;Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzakv<",
            "TA;>;",
            "Ljava/util/concurrent/Future<",
            "TB;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzakt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzakt;-><init>(Lcom/google/android/gms/internal/zzakv;Ljava/util/concurrent/Future;)V

    sget-object p1, Lcom/google/android/gms/internal/zzala;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/zzakv;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static final synthetic a(Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/internal/zzakg;Lcom/google/android/gms/internal/zzakv;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzalf;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzakv;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzakg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzalf;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzalf;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzalf;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzalf;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_3
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzalf;->cancel(Z)Z

    return-void
.end method

.method static final synthetic a(Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/internal/zzakv;Ljava/lang/Class;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzakv;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzalf;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzalf;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzalf;->a(Ljava/lang/Throwable;)V

    return-void
.end method
