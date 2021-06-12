.class Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingWorker"
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/Scheduler$Worker;

.field private e:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Scheduler$Worker;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p2, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->a:Ljava/lang/Runnable;

    .line 197
    iput-wide p3, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->b:J

    .line 198
    iput-object p5, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->c:Ljava/util/concurrent/TimeUnit;

    .line 199
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->d:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->e:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->e:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MusicSchedulers.PendingWorker"

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispose. disposable - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->e:Lio/reactivex/disposables/Disposable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", disposed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->e:Lio/reactivex/disposables/Disposable;

    .line 207
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->e:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->d:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->e:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->e:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->d:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    const-string v0, "MusicSchedulers.PendingWorker"

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run. isDisposed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->isDisposed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->d:Lio/reactivex/Scheduler$Worker;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->a:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->b:J

    iget-object v4, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/Scheduler$Worker;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->e:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PendingWorker["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
