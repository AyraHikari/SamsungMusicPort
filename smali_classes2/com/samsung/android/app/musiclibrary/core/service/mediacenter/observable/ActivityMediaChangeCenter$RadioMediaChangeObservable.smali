.class final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RadioMediaChangeObservable"
.end annotation


# instance fields
.field private final dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

.field private final observers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 518
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    return-void
.end method

.method private final getRadioMetadataFromService()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 4

    .line 521
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    .line 522
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v1, "Ui-MediaCenter"

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "META TSP getRadioMetadata  RadioMetadata object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ServiceCoreUtils.getRadi\u2026t\")\n                    }"

    .line 522
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tsp({ \"getRadioMetadataF\u2026      }\n                }"

    .line 731
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getRadioPlaybackStateFromService()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 4

    .line 529
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    .line 530
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    const-string v1, "Ui-MediaCenter"

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "META TSP getRadioPlaybackState  RadioPlaybackState object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ServiceCoreUtils.getRadi\u2026t\")\n                    }"

    .line 530
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tsp({ \"getRadioPlaybackS\u2026      }\n                }"

    .line 769
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final notifyMetaChangedFromDataCenter()V
    .locals 5

    .line 636
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    .line 637
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 638
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    const-string v2, "it"

    .line 639
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    const-wide/16 v3, 0x0

    .line 638
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->changeAttribute(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 645
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->notifyMetaChanged$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 647
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    const-string v1, "dataCenter.playbackState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->notifyPlayStateChanged$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method private final notifyMetaChangedFromService()V
    .locals 5

    .line 651
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->getRadioMetadataFromService()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 652
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    const-string v2, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->changeAttribute(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 657
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->getRadioPlaybackStateFromService()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    .line 658
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    const-string v3, "dataCenter"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->setMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 659
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    const-string v3, "dataCenter"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 660
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->notifyMetaChanged$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 661
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->notifyPlayStateChanged$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 662
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->requestRadioQueue()V

    return-void
.end method


# virtual methods
.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v1, "dataCenter.metadata"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "dataCenter.musicExtras"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMusicQueue()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getMusicQueue()Ljava/util/List;

    move-result-object v0

    const-string v1, "dataCenter.musicQueue"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    const-string v1, "dataCenter.playbackState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final notifyCurrentRadioData$musicLibrary_release()V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->notifyMetaChangedFromDataCenter()V

    goto :goto_0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    const-string v1, "dataCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 580
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->notifyMetaChangedFromService()V

    .line 581
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final notifyExtraChanged$musicLibrary_release(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;->access$notifyExtraChanged(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method public final notifyMetaChanged$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    const-string v0, "meta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;->access$notifyMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/util/List;)V

    return-void
.end method

.method public final notifyPlayStateChanged$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;->access$notifyPlayStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Ljava/util/List;)V

    return-void
.end method

.method public final notifyQueueChanged$musicLibrary_release(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
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

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;->access$notifyQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->notifyCurrentRadioData$musicLibrary_release()V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->notifyCurrentRadioData$musicLibrary_release()V

    .line 544
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->activate()V

    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->deactivate()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 568
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->dataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    const-string p2, "dataCenter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p1

    .line 569
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->notifyMetaChangedFromService()V

    .line 570
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->access$getDEBUG$cp()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Ui-MediaCenter"

    const-string v0, "registerRadioMediaChangeObserver but it was already registered"

    .line 588
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$RadioMediaChangeObservable;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
