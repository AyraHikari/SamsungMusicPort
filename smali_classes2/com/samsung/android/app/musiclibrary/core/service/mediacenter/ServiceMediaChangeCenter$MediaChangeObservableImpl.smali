.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaChangeObservableImpl"
.end annotation


# instance fields
.field private final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 602
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;)V
    .locals 0

    .line 598
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;-><init>()V

    return-void
.end method

.method private notifyExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 755
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    monitor-enter v0

    .line 756
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 761
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 767
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private notifyMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3

    .line 698
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    monitor-enter v0

    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 704
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0

    .line 710
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private notifyPlayStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    .line 717
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    monitor-enter v0

    .line 718
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 723
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    .line 729
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private notifyQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    monitor-enter v0

    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 742
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 748
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMusicQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 622
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->notifyExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 606
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->notifyMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 611
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->notifyPlayStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 617
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->notifyQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    monitor-enter v0

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    monitor-exit v0

    return-void

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 4

    .line 674
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    monitor-enter v0

    .line 675
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 682
    instance-of v3, v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;

    if-eqz v3, :cond_0

    .line 683
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;->release()V

    goto :goto_0

    .line 690
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 691
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    monitor-enter v0

    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->mObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 642
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
