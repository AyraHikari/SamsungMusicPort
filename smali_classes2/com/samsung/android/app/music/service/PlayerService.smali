.class public Lcom/samsung/android/app/music/service/PlayerService;
.super Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;,
        Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

.field private d:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

.field private e:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

.field private f:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

.field private g:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

.field private h:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

.field private i:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

.field private j:Z

.field private k:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

.field private l:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

.field private m:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

.field private n:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

.field private o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;

.field private p:Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;

.field private final q:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;-><init>()V

    .line 190
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->a()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->a:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 222
    new-instance v0, Lcom/samsung/android/app/music/service/PlayerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/PlayerService$1;-><init>(Lcom/samsung/android/app/music/service/PlayerService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->q:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    return-void
.end method

.method static synthetic A(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->h:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isMyMusicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->i:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    if-nez v0, :cond_1

    .line 269
    new-instance v0, Lcom/samsung/android/app/music/service/PlayerService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/PlayerService$2;-><init>(Lcom/samsung/android/app/music/service/PlayerService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->i:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->h:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->i:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->a(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private a(IZ)V
    .locals 4

    .line 621
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->d()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->notifyPlaybackStateAsPause()V

    .line 626
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 630
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->g(I)V

    .line 631
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(I[Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 633
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 p2, 0x7

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(I[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "is_set_list"

    .line 553
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "delete_count_duplicate"

    .line 554
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "added_count"

    .line 555
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const v3, 0x7f0b02e8

    const v4, 0x7f0b02e5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    if-lez v1, :cond_1

    if-le v2, v6, :cond_0

    .line 561
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    .line 562
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 561
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "delete_count"

    .line 570
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    return-void

    :cond_3
    const-string v7, "maximum_count"

    .line 576
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v7, 0x2

    if-lez v1, :cond_6

    if-ne v0, v1, :cond_5

    if-le v2, v6, :cond_4

    .line 581
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    .line 582
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 581
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 584
    :cond_4
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    goto :goto_1

    :cond_5
    const v0, 0x7f0b02e6

    .line 589
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    sub-int/2addr v2, v1

    .line 590
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    .line 588
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const v0, 0x7f0b02e7

    .line 594
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    .line 595
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    .line 594
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/PlayerService;II)V
    .locals 0

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/PlayerService;->c(II)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/PlayerService;IZ)V
    .locals 0

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/PlayerService;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;[JILjava/lang/String;J)V
    .locals 0

    .line 185
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/app/music/service/PlayerService;->a(Ljava/lang/String;[JILjava/lang/String;J)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 0

    .line 486
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 1409
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;

    .line 1410
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_MUSIC:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;-><init>(Landroid/content/Context;I)V

    .line 1409
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->changeToDlnaDmrPlayer(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 1117
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->b(I)V

    .line 1118
    iget-object p3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result p3

    if-nez p3, :cond_0

    .line 1119
    iget-object p3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1120
    iget-object p3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 1123
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/16 v1, 0x8

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v0

    invoke-interface {p3, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(I[Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;[JILjava/lang/String;J)V
    .locals 13

    move-object/from16 v0, p4

    const-string v1, "SV"

    .line 1325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openWithDmr() - key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dmrId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " seekPosition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p5

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1328
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;

    .line 1329
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_MUSIC:I

    invoke-direct {v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;-><init>(Landroid/content/Context;I)V

    move-object v12, p0

    .line 1328
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/service/PlayerService;->setDmrPlayerMode(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V

    goto :goto_0

    :cond_0
    move-object v12, p0

    :goto_0
    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move/from16 v8, p3

    move-wide/from16 v10, p5

    .line 1332
    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/app/music/service/PlayerService;->a(Ljava/lang/String;[JLjava/util/List;IZJ)V

    return-void
.end method

.method private a(Ljava/lang/String;[JILjava/lang/String;ZJZ)V
    .locals 11

    move-object v8, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1286
    :cond_0
    array-length v0, v3

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "SV"

    const-string v1, "Ignore request. ListRequest list length is 0."

    .line 1288
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-ltz v4, :cond_7

    if-lt v4, v0, :cond_2

    goto/16 :goto_4

    :cond_2
    const-wide/16 v1, 0x0

    cmp-long v9, p6, v1

    if-gtz v9, :cond_4

    if-eqz p5, :cond_3

    if-lez v0, :cond_3

    .line 1298
    aget-wide v6, v3, v4

    .line 1299
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getAudioId()J

    move-result-wide v9

    cmp-long v0, v6, v9

    if-nez v0, :cond_3

    .line 1300
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->position()J

    move-result-wide v0

    goto :goto_1

    :cond_3
    move-wide v0, v1

    :goto_1
    move-wide v6, v0

    goto :goto_2

    :cond_4
    move-wide/from16 v6, p6

    :goto_2
    if-eqz v5, :cond_6

    const-string v0, "SV"

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCommandIntent ACTION_START_SERVICE_CMD - dmrId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isDlnaServiceBind? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/samsung/android/app/music/service/PlayerService;->d:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    .line 1305
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->isDlnaServiceConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1304
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget-object v0, v8, Lcom/samsung/android/app/music/service/PlayerService;->d:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->isDlnaServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, v6

    .line 1307
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/PlayerService;->a(Ljava/lang/String;[JILjava/lang/String;J)V

    goto :goto_3

    .line 1310
    :cond_5
    iget-object v9, v8, Lcom/samsung/android/app/music/service/PlayerService;->d:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    new-instance v10, Lcom/samsung/android/app/music/service/PlayerService$6;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/PlayerService$6;-><init>(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;[JILjava/lang/String;J)V

    .line 1311
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->bindServiceImmediate(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;)V

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v5

    move v4, p3

    move/from16 v5, p8

    .line 1319
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/PlayerService;->a(Ljava/lang/String;[JLjava/util/List;IZJ)V

    :goto_3
    return-void

    :cond_7
    :goto_4
    const-string v0, "SV"

    const-string v1, "Ignore request. ListRequest position is abnormal minus or over list length"

    .line 1292
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/String;[JLjava/util/List;IZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;IZJ)V"
        }
    .end annotation

    .line 1337
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;

    invoke-direct {v0, p5, p6, p7}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;-><init>(ZJ)V

    .line 1338
    invoke-static {p1, p2, p3, p4, v0}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->create(Ljava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->openQueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    const-string v0, "SV"

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadCurrentPlayingItem: play: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->position()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 370
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getNowPlayingListPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->movePosition(II)V

    return-void
.end method

.method private a(I)Z
    .locals 1

    .line 600
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->d()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(II)Z
    .locals 3

    const/16 v0, -0x320

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, -0x2bc

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    sparse-switch p2, :sswitch_data_0

    return v1

    .line 729
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/PlayerService;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2

    :sswitch_1
    return v2

    :cond_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x14 -> :sswitch_1
        -0x13 -> :sswitch_1
        -0xd -> :sswitch_0
        -0xc -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/PlayerService;I)Z
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->a(I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/PlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 0

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/PlayerService;->isSamePlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/PlayerService;Z)Z
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->j:Z

    return p1
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1671
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    .line 1672
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v1

    long-to-int p1, v1

    .line 1673
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->a(I)I

    move-result p1

    const v1, 0x40002

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->h:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->h:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->a(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x1

    .line 616
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(IZ)V

    return-void
.end method

.method private b(II)V
    .locals 3

    .line 1415
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->isUserAction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1420
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserAction(Z)V

    const/4 v1, 0x0

    const/16 v2, -0x2bc

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, -0x14

    if-ne p2, p1, :cond_2

    .line 1425
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    const p2, 0x7f0b012d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    const v2, 0x7f0b03d6

    .line 1426
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1425
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 1432
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/PlayerService;I)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->b(I)V

    return-void
.end method

.method private b(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string v1, "player_extra_message"

    .line 718
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "msg_message"

    .line 719
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method private c()V
    .locals 2

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->e()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    .line 358
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->reloadCurrentPlayingItem()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->play()V

    :cond_1
    return-void
.end method

.method private c(II)V
    .locals 1

    .line 1437
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->isUserAction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1442
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserAction(Z)V

    const/16 v0, -0x320

    if-eq p1, v0, :cond_4

    const/16 v0, -0x2bc

    if-eq p1, v0, :cond_3

    const v0, 0x7f0b0139

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0b02ef

    .line 1472
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_0
    const/16 p1, -0x3ed

    if-ne p2, p1, :cond_2

    .line 1449
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1450
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x7f0b02ab

    .line 1452
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1457
    :cond_2
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1460
    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/PlayerService;->d(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1463
    :cond_4
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_5

    .line 1464
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/PlayerService;->f(I)V

    .line 1466
    :cond_5
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/PlayerService;->e(I)Ljava/lang/String;

    move-result-object p1

    .line 1474
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 4

    .line 1100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    .line 1101
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->e()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0b00ff

    .line 1102
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    return-void

    :cond_0
    const-string v0, "arg_is_play"

    const/4 v1, 0x1

    .line 1105
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1107
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(IZ)V

    .line 1108
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1109
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->setSupposeToBePlaying(Z)V

    .line 1111
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->b()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/PlayerService;I)V
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    return-void
.end method

.method private c(I)Z
    .locals 1

    const/16 v0, -0xbba

    if-eq p1, v0, :cond_0

    const p1, 0x7f0b0139

    .line 754
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f0b02f5

    .line 750
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 757
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 760
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->changeToMediaPlayer(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method private d()I
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x1

    .line 607
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private d(I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const p1, 0x7f0b02ab

    .line 1499
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const p1, 0x7f0b021c

    .line 1487
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p1, 0x7f0b01f5

    .line 1489
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p1, 0x7f0b022d

    .line 1497
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1481
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.sec.android.app.music.KEY_SHOP_AGE_LIMIT"

    const-string v1, "19"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1480
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const v0, 0x7f0b0283

    .line 1483
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1485
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 1483
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    const p1, 0x7f0b01c0

    .line 1491
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    const p1, 0x7f0b01ef

    .line 1493
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    const p1, 0x7f0b01e1

    .line 1495
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch -0x23
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->a()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/service/PlayerService;I)V
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    return-void
.end method

.method private e()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method

.method private e(I)Ljava/lang/String;
    .locals 1

    const/16 v0, -0x8fc

    if-eq p1, v0, :cond_0

    const/16 v0, -0xcb

    if-eq p1, v0, :cond_0

    const/16 v0, -0xc8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const p1, 0x7f0b02ef

    .line 1524
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const p1, 0x7f0b047b

    .line 1506
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    :pswitch_1
    const p1, 0x7f0b0115

    .line 1516
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch -0x192
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x67
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic e(Lcom/samsung/android/app/music/service/PlayerService;)Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->j:Z

    return p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 1049
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->n:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    if-nez v0, :cond_0

    .line 1050
    new-instance v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/app/music/service/PlayerService$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/PlayerService$5;-><init>(Lcom/samsung/android/app/music/service/PlayerService;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->n:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 1

    const/16 v0, -0x67

    if-eq p1, v0, :cond_1

    const/16 v0, -0x65

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1539
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    const-string v0, "downloading_device_overflow"

    .line 1540
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1533
    :cond_0
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    const-string v0, "drm-expired"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1536
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    const-string v0, "drm_not_auto_time"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x192
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic g(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    return-object p0
.end method

.method private g()Ljava/lang/String;
    .locals 4

    .line 1269
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getKeyWord()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SV"

    .line 1272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDlnaPlayingNic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private g(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1733
    iput-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->f:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    goto :goto_0

    .line 1728
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->l()V

    .line 1729
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->g:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->f:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object p0
.end method

.method private h()Z
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isSupportPlaySpeed()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->k:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    return-object p0
.end method

.method private i()Z
    .locals 2

    .line 1281
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getUriType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic j(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->h:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    return-object p0
.end method

.method private j()Z
    .locals 4

    .line 1677
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1681
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 1682
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v2

    long-to-int v0, v2

    const v2, 0x80001

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private k()Landroid/os/Bundle;
    .locals 2

    .line 1716
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic k(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->n:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    return-object p0
.end method

.method private l()V
    .locals 3

    .line 1738
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->g:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    if-nez v0, :cond_0

    .line 1739
    new-instance v0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;-><init>(Lcom/samsung/android/app/music/service/PlayerService;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->g:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->c()V

    return-void
.end method

.method static synthetic m(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    return-object p0
.end method

.method static synthetic n(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    return-object p0
.end method

.method static synthetic o(Lcom/samsung/android/app/music/service/PlayerService;)Landroid/content/Context;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic p(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object p0
.end method

.method static synthetic q(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->p:Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;

    return-object p0
.end method

.method static synthetic r(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    return-object p0
.end method

.method static synthetic s(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;

    return-object p0
.end method

.method static synthetic t(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->l:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    return-object p0
.end method

.method static synthetic u(Lcom/samsung/android/app/music/service/PlayerService;)I
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->d()I

    move-result p0

    return p0
.end method

.method static synthetic v(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    return-void
.end method

.method static synthetic w(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    return-void
.end method

.method static synthetic x(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    return-void
.end method

.method static synthetic y(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    return-void
.end method

.method static synthetic z(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    return-void
.end method


# virtual methods
.method public audioPathChanged(Landroid/content/Intent;Z)V
    .locals 1

    .line 881
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->audioPathChanged(Landroid/content/Intent;Z)V

    .line 882
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->e:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    if-eqz p1, :cond_0

    .line 883
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->e:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    iget-object p2, p0, Lcom/samsung/android/app/music/service/PlayerService;->e:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    .line 884
    invoke-virtual {p2}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, v0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(IZZ)V

    :cond_0
    return-void
.end method

.method public batteryChanged(II)V
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    const-string v0, "SMUSIC-SV"

    .line 1345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batteryChanged to low - batteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " batteryStatus: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1349
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->isShownNotification()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1350
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1351
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->stop()V

    .line 1353
    invoke-static {p0}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public dlnaConnectionChanged(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1360
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1362
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getQueueKeyword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1364
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCompilation()Ljava/lang/String;

    move-result-object p1

    .line 1366
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->resetNowPlayingList()V

    .line 1367
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1368
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/util/LaunchUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1372
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getDlnaPlayingDmrId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SMUSIC-SV"

    const-string p2, "current playing DMR removed, thus pause it"

    .line 1373
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->pause()V

    const/4 p1, 0x0

    .line 1379
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->changeToMediaPlayer(Z)V

    .line 1380
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1381
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/util/LaunchUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dlnaConnectionRequested(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1389
    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_MUSIC:I

    if-eq p1, v0, :cond_0

    const-string p2, "SMUSIC-SV"

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOtherDeviceReceiver ScreenSharing - DLNA_CONNECTION_REQUEST playerType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1395
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->d:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->isDlnaServiceConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1396
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/PlayerService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1398
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->d:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    new-instance v0, Lcom/samsung/android/app/music/service/PlayerService$7;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/service/PlayerService$7;-><init>(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->bindServiceImmediate(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;)V

    :goto_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1263
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p1, "version : 16.2.19-5"

    .line 1264
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public easyModeEnabled(Z)V
    .locals 0

    return-void
.end method

.method public getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1722
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->f:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->f:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    :goto_0
    return-object v0
.end method

.method public getExtraInformation(I)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_1

    .line 1172
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1168
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    .line 1169
    invoke-static {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->j()Z

    move-result v0

    .line 1168
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1164
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->k()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "track_id"

    .line 1165
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1160
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->k()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "station_id"

    .line 1161
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1156
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x1

    .line 1157
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    .line 1156
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1153
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getSortMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1150
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->e:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1147
    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1144
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "SMUSIC-SV"

    .line 1174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtraInformation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .line 1180
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x5

    .line 1182
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0

    .line 1184
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getNextRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .line 1212
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0

    .line 1215
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getNextRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationObserver()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 2

    .line 1190
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1191
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0

    .line 1195
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getLastPlaybackState(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0

    .line 1197
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method protected getPlayerLoggers()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;"
        }
    .end annotation

    .line 481
    invoke-static {}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->d()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .line 1202
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x6

    .line 1204
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0

    .line 1206
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 2

    .line 1220
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1221
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0

    .line 1225
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getLastPlaybackState(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0

    .line 1227
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getRadioQueueExtras()Landroid/os/Bundle;
    .locals 2

    .line 1232
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0

    .line 1235
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getRadioQueueExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public isEnableToPlaying()Z
    .locals 3

    .line 1694
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->w:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1697
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isSplitSoundOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SMUSIC-SV"

    const-string v2, "isEnableToPlaying : mAudioManager.isSplitSoundOn() is true. so do not check call state"

    .line 1699
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1703
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1706
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SMUSIC-SV"

    const-string v1, "startPlay Can\'t play during call"

    .line 1707
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b0422

    .line 1708
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    const/4 v0, 0x0

    return v0

    :cond_3
    return v1
.end method

.method public isFavorite()Z
    .locals 3

    .line 823
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->m:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getAudioId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavoriteTrack(J)Z

    move-result v0

    return v0
.end method

.method public isSupportForward()Z
    .locals 3

    .line 774
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const v0, 0x7f0b0427

    .line 779
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    return v1

    .line 782
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b02cd

    .line 787
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected isSupportNextMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 2

    .line 768
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->a(I)I

    move-result p1

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSupportRewind()Z
    .locals 3

    .line 795
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const v0, 0x7f0b0427

    .line 800
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    return v1

    .line 803
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b02ce

    .line 808
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 7

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    .line 302
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->j:Z

    .line 303
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Server;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Renderer;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore;->DLNA_ALL_DELETE_URI:Landroid/net/Uri;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->d:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    .line 308
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->b:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mIsSupportSmartVolume:Z

    .line 309
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCreate()V

    .line 310
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->i_:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->d:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->bindService()V

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 315
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->hasExternalSoundAlive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    new-instance v1, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->e:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    .line 317
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->e:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->c()V

    .line 319
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->q:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 320
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_2

    .line 321
    new-instance v1, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->h:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    .line 322
    new-instance v1, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;-><init>(Landroid/app/Application;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->l:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    .line 323
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->l:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    new-instance v2, Lcom/samsung/android/app/music/service/PlayerService$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/PlayerService$3;-><init>(Lcom/samsung/android/app/music/service/PlayerService;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->a(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$OnUserChangedListener;)V

    .line 336
    :cond_2
    new-instance v1, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->m:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    return-void
.end method

.method protected onCreateMultiPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .locals 3

    .line 377
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;)V

    return-object v0
.end method

.method protected onCreateMusicContents()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->a:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-object v0
.end method

.method protected onCreatePlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 5

    .line 496
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 497
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->a:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    new-instance v3, Lcom/samsung/android/app/music/service/metadata/playingitem/LocalPlayingItemFactory;

    invoke-direct {v3}, Lcom/samsung/android/app/music/service/metadata/playingitem/LocalPlayingItemFactory;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    .line 499
    invoke-static {v4}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v4

    .line 498
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    return-object v0
.end method

.method protected onCreatePlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateServiceMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
    .locals 11

    .line 382
    iget-object v8, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    .line 383
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;-><init>()V

    .line 384
    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->a:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    const v2, 0x7f1000b7

    invoke-direct {v9, v8, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;I)V

    .line 388
    new-instance v10, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;

    .line 389
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v3

    const-class v4, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;

    new-instance v6, Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;

    invoke-direct {v6}, Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;-><init>()V

    new-instance v7, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;

    invoke-direct {v7}, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;-><init>()V

    move-object v0, v10

    move-object v1, v8

    move-object v2, v9

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Ljava/lang/Class;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;)V

    iput-object v10, p0, Lcom/samsung/android/app/music/service/PlayerService;->o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;

    .line 392
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;

    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;

    new-instance v1, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;

    invoke-direct {v1, v8}, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setLyricLoader(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getPlayerLoggers()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlayerLoggers(Landroid/util/SparseArray;)V

    .line 396
    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->a:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 397
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    new-instance v6, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;

    invoke-direct {v6, v9}, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    move-object v0, v7

    move-object v1, v8

    move-object v3, v9

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;)V

    iput-object v7, p0, Lcom/samsung/android/app/music/service/PlayerService;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 401
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;

    .line 402
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/service/observer/artwork/EdgePanelArtworkConverter;

    invoke-direct {v2}, Lcom/samsung/android/app/music/service/observer/artwork/EdgePanelArtworkConverter;-><init>()V

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;)V

    .line 401
    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 404
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;

    .line 405
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;)V

    .line 404
    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 407
    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isSupportCoverSView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;

    .line 409
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->i:Z

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Z)V

    .line 408
    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 413
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->obtainScheduleExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 414
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_1

    .line 415
    new-instance v1, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;

    invoke-direct {v1, v8, p0}, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    invoke-direct {p0, v9, v1}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 416
    new-instance v1, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-direct {v1, v0, v8}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->k:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 417
    new-instance v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-direct {v1, v8}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v9, v1}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 419
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->k:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-direct {v1, v8, v2, v0}, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-direct {p0, v9, v1}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 424
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->a:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-direct {v0, v8, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V

    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 425
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater;

    .line 426
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;

    invoke-direct {v2, v8}, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v8, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;)V

    .line 425
    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 428
    invoke-static {}, Lcom/samsung/android/app/music/legacy/gesture/LegacyGestureFeatures;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    new-instance v0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;

    invoke-direct {v0, v8, p0}, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 432
    :cond_2
    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 433
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;

    .line 434
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-direct {v0, v8, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V

    .line 433
    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 436
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->d:Z

    if-eqz v0, :cond_3

    .line 437
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    const-class v1, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver;

    invoke-direct {v0, v8, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 440
    :cond_3
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->f:Z

    if-eqz v0, :cond_4

    .line 441
    new-instance v0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    new-instance v2, Lcom/samsung/android/app/music/service/PlayerService$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/PlayerService$4;-><init>(Lcom/samsung/android/app/music/service/PlayerService;)V

    invoke-direct {v0, v8, v1, v2}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;)V

    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 455
    :cond_4
    new-instance v0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;-><init>(Lcom/samsung/android/app/music/service/PlayerService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->p:Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;

    .line 456
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->p:Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;

    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 457
    new-instance v0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;

    invoke-direct {v0, v8}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    .line 458
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->a(Z)Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->a()Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;

    move-result-object v0

    .line 457
    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 460
    invoke-static {v8}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 461
    invoke-static {v8}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    :cond_5
    return-object v9
.end method

.method public onCustomEvent(ILandroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1044
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCustomEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1038
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/16 v0, 0xe

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1035
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/16 v0, 0xd

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1028
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->l()V

    const-string p1, "arg_position"

    .line 1029
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "arg_direction"

    .line 1030
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "arg_is_play"

    .line 1031
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 1032
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->g:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    invoke-interface {v1, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->openQueuePosition(IIZ)V

    goto :goto_0

    .line 1025
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/16 v0, 0xc

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1022
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/16 v0, 0xb

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1019
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/PlayerService;->c(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_6
    const-string p1, "arg_station_id"

    .line 1013
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "arg_track_id"

    .line 1014
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arg_play_station"

    .line 1015
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 1016
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/service/PlayerService;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1041
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->onMediaSessionCommand(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string p1, "arg_user_eq"

    .line 1008
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    const-string v0, "arg_user_ext"

    .line 1009
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p2

    .line 1010
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->e:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a([I[IZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCustomEvent(ILjava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const-string v0, "SMUSIC-SV"

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCustomEvent event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe

    if-eq p1, v0, :cond_2

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    .line 999
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCustomEvent(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 995
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->f()V

    .line 996
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->n:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 988
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->f()V

    .line 989
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->n:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a()V

    goto/16 :goto_1

    .line 984
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->f()V

    .line 985
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->n:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 980
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->f()V

    .line 981
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->n:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b(Z)V

    goto/16 :goto_1

    .line 976
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->f()V

    .line 977
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->n:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Z)V

    goto/16 :goto_1

    .line 972
    :pswitch_5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 973
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->a(Z)V

    goto/16 :goto_1

    .line 969
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->k()V

    goto/16 :goto_1

    .line 965
    :pswitch_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 966
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->b(I)V

    goto/16 :goto_1

    .line 962
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v2, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-interface {p1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(I[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 958
    :pswitch_9
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->l()V

    .line 959
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->g:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->prev(Z)Z

    goto/16 :goto_1

    .line 954
    :pswitch_a
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->l()V

    .line 955
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->g:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->next()Z

    goto/16 :goto_1

    .line 950
    :pswitch_b
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->l()V

    .line 951
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->g:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->pause()V

    goto/16 :goto_1

    .line 946
    :pswitch_c
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->l()V

    .line 947
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->g:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->play()V

    goto/16 :goto_1

    .line 942
    :pswitch_d
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->l()V

    .line 943
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->g:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->togglePlay()V

    goto/16 :goto_1

    .line 938
    :pswitch_e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 939
    iget-object p2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setSortMode(I)V

    goto/16 :goto_1

    .line 934
    :pswitch_f
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->e:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    .line 935
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v1, v0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(IZZ)V

    goto/16 :goto_1

    .line 931
    :pswitch_10
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setSupportAod(I)V

    goto :goto_1

    .line 913
    :pswitch_11
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->changeToWfdDevice()V

    goto :goto_1

    .line 908
    :pswitch_12
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->p:Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V

    .line 909
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 910
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->changeToMediaPlayer(Z)V

    goto :goto_1

    .line 904
    :pswitch_13
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/PlayerService;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 901
    :pswitch_14
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->d:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->selectDlnaDms(Ljava/lang/String;)V

    goto :goto_1

    .line 898
    :pswitch_15
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->d:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->refresh()V

    goto :goto_1

    .line 895
    :pswitch_16
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->d:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->bindService()V

    goto :goto_1

    .line 925
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setBargeIn(Z)V

    goto :goto_1

    .line 918
    :cond_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 919
    iget-object p2, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->setAdaptSoundOn(Landroid/content/Context;Z)V

    .line 920
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.samsung.android.app.music.core.state.SET_ADAPT_SOUND"

    .line 921
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "com.samsung.android.app.music.core.state.SET_ADAPT_SOUND"

    .line 922
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/PlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    :pswitch_17
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_17
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1a
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2a
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCustomEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1128
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x533dd94f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.musicplus.intent.action.PLAY_CONTENTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 1134
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCustomEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 1131
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playContentsFromMediaBrowser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1240
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->q:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 1241
    invoke-static {}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b()V

    .line 1242
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->e:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->e:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a()V

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->h:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    if-eqz v0, :cond_1

    .line 1246
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->h:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->release()V

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->l:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    if-eqz v0, :cond_2

    .line 1249
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->l:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->release()V

    .line 1251
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->k:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    if-eqz v0, :cond_3

    .line 1252
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->k:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->release()V

    .line 1254
    :cond_3
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onDestroy()V

    .line 1256
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->d:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    if-eqz v0, :cond_4

    .line 1257
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->d:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->release()V

    :cond_4
    return-void
.end method

.method protected onPlayerError(IILandroid/os/Bundle;)V
    .locals 1

    const/16 v0, -0x384

    if-ne p1, v0, :cond_0

    .line 656
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/PlayerService;->c(I)Z

    return-void

    .line 659
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->e()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->completePlaying(Z)V

    return-void

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 671
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPausedByAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 673
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 674
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/PlayerService;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 675
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->isUserAction()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 676
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    .line 678
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->skipToNextUntilMatchedErrorCount()V

    .line 679
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/PlayerService;->b(II)V

    goto :goto_1

    .line 681
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/service/PlayerService;->b(Landroid/os/Bundle;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_0

    .line 685
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/PlayerService;->c(II)V

    .line 688
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->pause()V

    .line 690
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "error_type"

    .line 691
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "com.samsung.android.app.music.core.state.queue.ERROR"

    .line 692
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/PlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_7
    const/16 p1, -0xf

    if-eq p2, p1, :cond_9

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    .line 708
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->isUserAction()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 709
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    .line 711
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->skipToNextUntilMatchedErrorCount()V

    goto :goto_1

    .line 705
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->next()Z

    goto :goto_1

    .line 701
    :cond_9
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->pause()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x23
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x14
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 647
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onTaskRemoved(Landroid/content/Intent;)V

    .line 648
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPausedByAudioFocus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->exit()V

    :cond_0
    return-void
.end method

.method protected onUpdateNetwork()V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->h:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->h:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->a()V

    :cond_0
    return-void
.end method

.method public openQueueFromIntent(Ljava/lang/String;[JIZLjava/lang/String;ZJ)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move v5, p6

    move-wide/from16 v6, p7

    move v8, p4

    .line 818
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/service/PlayerService;->a(Ljava/lang/String;[JILjava/lang/String;ZJZ)V

    return-void
.end method

.method public play()V
    .locals 1

    const/4 v0, 0x0

    .line 518
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->b(I)V

    .line 519
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->play()V

    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12

    .line 840
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 841
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    .line 842
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "radio"

    .line 844
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 845
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SMUSIC-SV"

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playFromMediaId station path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 847
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/app/music/service/PlayerService;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 851
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v5, 0x0

    .line 852
    new-array v6, v1, [J

    const/4 p2, 0x0

    aput-wide v2, v6, p2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/app/music/service/PlayerService;->a(Ljava/lang/String;[JLjava/util/List;IZJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "SMUSIC-SV"

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playFromMediaId not supported mediaId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/util/player/GoogleSearchPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method protected prevInLimitMove()V
    .locals 3

    .line 866
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 867
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getNowPlayingListPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->movePosition(II)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 871
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->seek(J)J

    :goto_0
    return-void
.end method

.method public pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 524
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 525
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 526
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->g(I)V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.queue.NOTIFY"

    .line 527
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "type"

    .line 528
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 530
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/PlayerService;->a(Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v0, "com.samsung.android.app.music.core.state.queue.ERROR"

    .line 533
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    const-string v0, "error_type"

    .line 535
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 538
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 541
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 542
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->isUserAction()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const p1, 0x7f0b00d3

    .line 543
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    return-void

    .line 549
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected reloadFirstQueue(Z)V
    .locals 0

    .line 834
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->a()V

    .line 835
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadFirstQueue(Z)V

    return-void
.end method

.method public reloadQueue()V
    .locals 0

    .line 828
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->a()V

    .line 829
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadQueue()V

    return-void
.end method

.method protected setSupposeToBePlayingByPlayerQueue(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 640
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(IZ)V

    .line 642
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlayingByPlayerQueue(Z)V

    return-void
.end method

.method public togglePlay()V
    .locals 1

    const/4 v0, 0x0

    .line 509
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->togglePlay()V

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->play()V

    :goto_0
    return-void
.end method
