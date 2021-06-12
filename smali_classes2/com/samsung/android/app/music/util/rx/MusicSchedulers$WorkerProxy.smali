.class Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;
.super Lio/reactivex/Scheduler$Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/util/rx/MusicSchedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkerProxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;
    }
.end annotation


# instance fields
.field private a:Lio/reactivex/Scheduler$Worker;

.field private b:Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;


# direct methods
.method constructor <init>(Lio/reactivex/Scheduler$Worker;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->a:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 8

    .line 150
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MusicSchedulers.WorkerProxy"

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedule. proc not started yet. add to pending list. delay - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", unit - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", original - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->a:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;

    iget-object v3, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->a:Lio/reactivex/Scheduler$Worker;

    move-object v2, v0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;-><init>(Lio/reactivex/Scheduler$Worker;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->b:Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;

    .line 155
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->h()Lio/reactivex/functions/Function;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 157
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->h()Lio/reactivex/functions/Function;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->b:Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;

    invoke-interface {p1, p2}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;

    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->b:Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->b:Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->a(Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;)V

    .line 163
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->b:Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;

    return-object p1

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->a:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/reactivex/Scheduler$Worker;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->b:Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->b:Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->dispose()V

    const-string v0, "MusicSchedulers.WorkerProxy"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispose. original - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->a:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", disposed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->a:Lio/reactivex/Scheduler$Worker;

    .line 174
    invoke-virtual {v2}, Lio/reactivex/Scheduler$Worker;->isDisposed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->a:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->b:Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->b:Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->isDisposed()Z

    move-result v0

    return v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;->a:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->isDisposed()Z

    move-result v0

    return v0
.end method
