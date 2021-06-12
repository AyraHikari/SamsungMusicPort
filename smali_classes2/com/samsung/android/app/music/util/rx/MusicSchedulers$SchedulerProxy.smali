.class Lcom/samsung/android/app/music/util/rx/MusicSchedulers$SchedulerProxy;
.super Lio/reactivex/Scheduler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/util/rx/MusicSchedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SchedulerProxy"
.end annotation


# instance fields
.field private b:Lio/reactivex/Scheduler;


# direct methods
.method constructor <init>(Lio/reactivex/Scheduler;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$SchedulerProxy;->b:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 119
    invoke-super {p0}, Lio/reactivex/Scheduler;->a()V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$SchedulerProxy;->b:Lio/reactivex/Scheduler;

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->a()V

    const-string v0, "MusicSchedulers.SchedulerProxy"

    const-string v1, "start"

    .line 121
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lio/reactivex/Scheduler$Worker;
    .locals 2

    .line 133
    new-instance v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$SchedulerProxy;->b:Lio/reactivex/Scheduler;

    invoke-virtual {v1}, Lio/reactivex/Scheduler;->b()Lio/reactivex/Scheduler$Worker;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;-><init>(Lio/reactivex/Scheduler$Worker;)V

    return-object v0
.end method
