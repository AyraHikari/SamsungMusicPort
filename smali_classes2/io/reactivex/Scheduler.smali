.class public abstract Lio/reactivex/Scheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/Scheduler$DisposeTask;,
        Lio/reactivex/Scheduler$PeriodicDirectTask;,
        Lio/reactivex/Scheduler$Worker;
    }
.end annotation


# static fields
.field static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 99
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx2.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    .line 100
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/reactivex/Scheduler;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 179
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lio/reactivex/Scheduler;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 8

    .line 229
    invoke-virtual {p0}, Lio/reactivex/Scheduler;->b()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    .line 231
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 233
    new-instance v7, Lio/reactivex/Scheduler$PeriodicDirectTask;

    invoke-direct {v7, p1, v0}, Lio/reactivex/Scheduler$PeriodicDirectTask;-><init>(Ljava/lang/Runnable;Lio/reactivex/Scheduler$Worker;)V

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 235
    invoke-virtual/range {v0 .. v6}, Lio/reactivex/Scheduler$Worker;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 236
    sget-object p2, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    return-object v7
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 2

    .line 197
    invoke-virtual {p0}, Lio/reactivex/Scheduler;->b()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    .line 199
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 201
    new-instance v1, Lio/reactivex/Scheduler$DisposeTask;

    invoke-direct {v1, p1, v0}, Lio/reactivex/Scheduler$DisposeTask;-><init>(Ljava/lang/Runnable;Lio/reactivex/Scheduler$Worker;)V

    .line 203
    invoke-virtual {v0, v1, p2, p3, p4}, Lio/reactivex/Scheduler$Worker;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    return-object v1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public abstract b()Lio/reactivex/Scheduler$Worker;
.end method
