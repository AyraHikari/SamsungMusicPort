.class public final Lcom/samsung/android/app/music/util/rx/MusicSchedulers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;,
        Lcom/samsung/android/app/music/util/rx/MusicSchedulers$SchedulerProxy;
    }
.end annotation


# static fields
.field private static a:Z = true

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/Runnable;

.field private static d:Landroid/os/Handler;

.field private static e:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;",
            "Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->b:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->c:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lio/reactivex/Scheduler;
    .locals 1

    .line 36
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method static a(J)V
    .locals 3

    const/4 v0, 0x0

    .line 74
    sput-boolean v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->a:Z

    .line 75
    sget-object v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->d:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$2;

    invoke-direct {v1}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$2;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "MusicSchedulers"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopUntil. timeMs - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;)V
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->b(Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;)V

    return-void
.end method

.method public static b()Lio/reactivex/Scheduler;
    .locals 1

    .line 40
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;)V
    .locals 3

    .line 101
    sget-object v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "MusicSchedulers"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPendingWorker. worker - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->e()V

    return-void
.end method

.method static c()Z
    .locals 1

    .line 61
    sget-boolean v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->a:Z

    return v0
.end method

.method static d()V
    .locals 3

    .line 65
    sget-boolean v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 68
    sput-boolean v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->a:Z

    const-string v0, "MusicSchedulers"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start. pending size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->e()V

    return-void
.end method

.method static e()V
    .locals 2

    .line 88
    sget-boolean v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->d:Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    sget-object v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->d:Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic f()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->a:Z

    return v0
.end method

.method static synthetic g()Ljava/util/List;
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h()Lio/reactivex/functions/Function;
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->e:Lio/reactivex/functions/Function;

    return-object v0
.end method
