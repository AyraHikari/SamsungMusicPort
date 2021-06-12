.class public final Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PlayRequestTimer"


# instance fields
.field private b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Ljava/util/concurrent/Future;

.field private d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    return-void
.end method

.method private b()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->c:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->c:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->c:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 60
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->b:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->b()V

    .line 37
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->a:Ljava/lang/String;

    const-string v1, "setTime"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->c()V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f40

    invoke-interface {v0, p0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->c:Ljava/util/concurrent/Future;

    return-void
.end method

.method public release()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->b()V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->b:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    invoke-interface {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;->a()V

    :cond_0
    return-void
.end method
