.class final Lcom/samsung/android/app/music/util/rx/MusicSchedulers$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/util/rx/MusicSchedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 46
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$WorkerProxy$PendingWorker;->run()V

    const-string v0, "MusicSchedulers"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run. remain pending size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
