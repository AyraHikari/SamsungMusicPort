.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
.implements Lcom/samsung/android/app/musiclibrary/core/service/IDump;
.implements Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler$OnStopServiceListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/action/PlayerServiceCommandAction;
.implements Lcom/samsung/android/app/musiclibrary/core/service/action/PlayerServiceStateExtra;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;,
        Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;
    }
.end annotation


# static fields
.field private static final LIFE_CYCLE_TAG:Ljava/lang/String; = "LifeCycle: "

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static final MAX_ERROR_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SV"

.field protected static final TEMP_LAZY_PLAYER_INITIALIZE:Z

.field private static sCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;


# instance fields
.field private mAudioPathHandler:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;

.field private mBinder:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;

.field private mBroadcastReceiverController:Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

.field private mErrorCount:I

.field private mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

.field private mIsBetteryOptimizationsShown:Z

.field private mIsFirstMetaNotified:Z

.field private mIsNeedToStartForeground:Z

.field private mIsNotificationShown:Z

.field protected mIsSupportSmartVolume:Z

.field private mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

.field protected mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field protected mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

.field protected mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private final mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

.field private final mRadioExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

.field private mReloadFristQueue:Z

.field private mServiceCommandReceiver:Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;

.field private mServiceInUse:Z

.field protected mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

.field private mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

.field private mStopRequestCount:I

.field private final mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

.field private mToastHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

.field private final mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

.field private mWasTryToMakeNotiChannel:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 118
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    .line 120
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    .line 122
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mRadioExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    .line 124
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler$OnStopServiceListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsSupportSmartVolume:Z

    .line 157
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    .line 159
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsBetteryOptimizationsShown:Z

    .line 161
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNeedToStartForeground:Z

    .line 163
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceInUse:Z

    const/4 v1, 0x1

    .line 165
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mReloadFristQueue:Z

    .line 168
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsFirstMetaNotified:Z

    .line 170
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mWasTryToMakeNotiChannel:Z

    .line 173
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mErrorCount:I

    .line 175
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mRadioExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->handleDrmRequest(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->exitInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->openPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsFirstMetaNotified:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushMetadataUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->composeDataSource(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushQueueUpdate(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushPlaybackStateUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method private cancelServiceTimeOut()V
    .locals 0

    return-void
.end method

.method private composeDataSource(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 3

    const-string v0, "SMUSIC-SV"

    .line 1711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "composeDataSource playingItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;-><init>()V

    .line 1713
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-object v0
.end method

.method private varargs dump(Ljava/io/PrintWriter;[Lcom/samsung/android/app/musiclibrary/core/service/IDump;)V
    .locals 5

    .line 726
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 727
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ------------------- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -------------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IDump;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureToastHandler()V
    .locals 2

    .line 1390
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mToastHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    if-nez v0, :cond_0

    .line 1391
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mToastHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    :cond_0
    return-void
.end method

.method private exitInternal()V
    .locals 2

    const-string v0, "SMUSIC-SV"

    const-string v1, "exitInternal"

    .line 1096
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.state.EXIT_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "com.samsung.android.app.music.core.state.HIDE_NOTIFICATION"

    const/4 v1, 0x0

    .line 1103
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->abandonAudioFocus()V

    .line 1115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestStopService()V

    .line 1116
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1117
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->changeToMediaPlayer(Z)V

    :cond_0
    return-void
.end method

.method private fadeDown(Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V
    .locals 2

    const-string v0, "SMUSIC-SV"

    const-string v1, "fadeDown"

    .line 1090
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->fade(FLcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V

    return-void
.end method

.method private getActivePlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 2

    .line 1369
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x7

    .line 1370
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-object v0
.end method

.method private getHideNotificationServicePendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1828
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getHideNotificationPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    .locals 1

    .line 361
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->sCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    return-object v0
.end method

.method private handleDrmRequest(Landroid/os/Bundle;)V
    .locals 4

    .line 1842
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SV"

    const-string v1, "open drm fail ui top"

    .line 1843
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->stop()V

    .line 1857
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$6;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p1, "SV"

    const-string v0, "open drm fail ui background"

    .line 1869
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->skipToNextUntilMatchedErrorCount()V

    :goto_0
    return-void
.end method

.method private isCurrentSongPrivateMode()Z
    .locals 1

    .line 1702
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result v0

    return v0
.end method

.method private isNextSongPrivateMode()Z
    .locals 1

    .line 1706
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getNextDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSameString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1446
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private isServiceInUse()Z
    .locals 5

    .line 1718
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    .line 1719
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPausedByAudioFocus()Z

    move-result v1

    .line 1720
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isGoingToTrackEnd()Z

    move-result v2

    .line 1721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceInUse mServiceInUse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceInUse:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isPlaying: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isPausedByAudioFocus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsNotificationShown "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1725
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceInUse:Z

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isWifiDisplayIntent(Ljava/lang/String;)Z
    .locals 1

    .line 1633
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;->WIFIDISPLAY_SOURCE_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;->WIFIDISPLAY_SESSION_STATE:Ljava/lang/String;

    .line 1634
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private makeNotificationChannels()V
    .locals 5

    const/4 v0, 0x1

    .line 628
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mWasTryToMakeNotiChannel:Z

    .line 629
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->isOverO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 632
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.PLAYBACK"

    .line 633
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->music_core_player_service_notification_channel_name:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/NotificationUtils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method private needToNotify(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    .line 1625
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1626
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isWifiDisplayIntent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1627
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SideSyncManager;->isSideSyncConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private openPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V
    .locals 3

    const-string v0, "SMUSIC-SV"

    .line 1401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openPlayingItem isGaplessPlaying ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1404
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isSamePlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1406
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    goto :goto_0

    .line 1408
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushMetadataUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 1409
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->composeDataSource(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object p1

    .line 1419
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    :goto_0
    return-void
.end method

.method private printLifeCycleLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV"

    .line 1887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifeCycle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private pushMetadataUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 1450
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mWasTryToMakeNotiChannel:Z

    if-nez v0, :cond_0

    .line 1451
    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    const/4 v1, 0x0

    return-void
.end method

.method private pushMetadataUpdateAndPlayState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/player/IPlaybackNotifier;)V
    .locals 1

    .line 1458
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    return-void
.end method

.method private pushPlaybackStateUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 1462
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method private pushQueueUpdate(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
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

    .line 1466
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method private reloadLastPlayingItem()V
    .locals 1

    .line 485
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mReloadFristQueue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadFirstQueue(Z)V

    .line 487
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mReloadFristQueue:Z

    goto :goto_0

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadPlayingItem()V

    :goto_0
    return-void
.end method

.method private reloadPlayingItem()V
    .locals 3

    .line 1347
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mReloadFristQueue:Z

    if-eqz v0, :cond_0

    return-void

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1355
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isNotInitializedAndNoError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1356
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getActivePlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 1357
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 1358
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1359
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->composeDataSource(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    .line 1361
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->reloadPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;Z)Z

    goto :goto_0

    .line 1364
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->reloadPlayingItemIfStopped()Z

    :cond_3
    :goto_0
    return-void
.end method

.method private setInternalQueueMode(II)V
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setMode(II)V

    return-void
.end method

.method private setServiceTimeout()V
    .locals 8

    const-string v0, "SV"

    const-string v1, "setServiceTimeout() notification will hide after 120000 milli sec"

    .line 1798
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getHideNotificationServicePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    .line 1801
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1802
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/32 v3, 0x1d4c0

    const/4 v5, 0x0

    const/16 v6, 0x17

    if-lt v2, v6, :cond_0

    .line 1804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v3

    .line 1803
    invoke-virtual {v1, v5, v6, v7, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1806
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v3

    invoke-virtual {v1, v5, v6, v7, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method private showMaximumQueueCountOverToast(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "maximum_count"

    .line 1487
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "is_added_count_over"

    .line 1489
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1491
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1492
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->unable_to_add_tracks_to_queue_and_limited:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1495
    :cond_0
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->unable_to_add_tracks_to_queue_and_replace:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1496
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 1495
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startNotificationUpdate()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 589
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getNotificationObserver()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    move-result-object v0

    .line 590
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 591
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getActivePlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    .line 593
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 595
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 596
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->forceToUpdateNotification(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method private startReloadFirstQueue(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 524
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mReloadFristQueue:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 525
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceCommandReceiver:Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->isForegroundCommand(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 526
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadFirstQueue(Z)V

    .line 528
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->startServiceForegroundIfConditionMatched(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 529
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadFirstQueue(Z)V

    .line 530
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mReloadFristQueue:Z

    goto :goto_0

    .line 532
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->startServiceForegroundIfConditionMatched(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private startServiceCommand(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceCommandReceiver:Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->onStartCommand(Landroid/content/Intent;)Z

    const-string v0, "com.samsung.android.app.music.core.action.BIND_SERVICE"

    .line 544
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 545
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadPlayingItem()V

    :cond_1
    return-void
.end method

.method private startServiceForegroundIfConditionMatched(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_7

    .line 550
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->isOverO()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 553
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.core.action.BIND_SERVICE"

    .line 554
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 557
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    if-eqz v1, :cond_4

    .line 558
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNeedToStartForeground:Z

    if-eqz v1, :cond_2

    const-string v1, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "command"

    .line 559
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 560
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "try to start foreground to ensure method call after first registerNotification()"

    .line 561
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    .line 563
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->startNotificationUpdate()V

    goto :goto_0

    .line 566
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_3

    const-string p1, "activity"

    .line 568
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 569
    invoke-virtual {p1}, Landroid/app/ActivityManager;->isBackgroundRestricted()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 570
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->startNotificationUpdate()V

    :cond_3
    :goto_0
    return-void

    .line 576
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mWasTryToMakeNotiChannel:Z

    if-nez v0, :cond_5

    .line 577
    .line 579
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceCommandReceiver:Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->isForegroundCommand(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 580
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->startNotificationUpdate()V

    goto :goto_1

    .line 582
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 583
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->tempForegroundAndStopForeground(Landroid/content/Context;)V

    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method private tempForegroundAndStopForeground(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 604
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "com.samsung.android.app.music.PLAYBACK"

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/4 v0, 0x1

    .line 610
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->startForeground(ILandroid/app/Notification;)V

    .line 611
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public addQueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V
    .locals 3

    .line 764
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->list:[J

    array-length v0, v0

    if-nez v0, :cond_0

    return-void

    .line 767
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setUserActionActive()V

    .line 768
    iget-boolean v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->doChangeToPosition:Z

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    const/4 v0, 0x1

    .line 770
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlayingByPlayerQueue(Z)V

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V

    return-void
.end method

.method public addQueueItems(ILjava/util/List;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;ZI)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 778
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setUserActionActive()V

    if-eqz p3, :cond_1

    .line 783
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 784
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlayingByPlayerQueue(Z)V

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->enqueue(ILjava/util/List;ZI)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public audioPathChanged(Landroid/content/Intent;Z)V
    .locals 2

    .line 1520
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaySpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setPlaySpeed(F)V

    .line 1522
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->resetBaseVolume(Z)V

    .line 1532
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1533
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->needToNotify(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1535
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mAudioPathHandler:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->notifyPathChangedToBt()V

    goto :goto_0

    .line 1537
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mAudioPathHandler:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->notifyPathChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public autoOff()V
    .locals 2

    const-string v0, "SMUSIC-SV"

    const-string v1, "Music Playing paused because of music auto off setting"

    .line 1127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pause()V

    .line 1130
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/AutoOffUtils;->removeAutoOffPendingIntent(Landroid/content/Context;)V

    return-void
.end method

.method public becomingNoisy()V
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->becomingNoisy()V

    return-void
.end method

.method public buffering()I
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getBufferingPercent()I

    move-result v0

    return v0
.end method

.method public changeSetting(Landroid/os/Bundle;)V
    .locals 2

    .line 1140
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    if-eqz v0, :cond_0

    const-string v0, "smart_volume"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "smart_volume"

    .line 1141
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1142
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->setSmartVolume(Z)V

    .line 1143
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setSmartVolume(Z)V

    .line 1147
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    const-string v1, "com.samsung.android.app.music.core.state.SETTING_CHANGED"

    .line 1148
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const-string v0, "play_speed"

    .line 1152
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "play_speed"

    .line 1153
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1154
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setPlaySpeed(F)V

    .line 1155
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setPlaySpeed(F)V

    :cond_1
    const-string v0, "skip_silences"

    .line 1158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "skip_silences"

    .line 1160
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSkipSilences(Z)V

    .line 1162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setSkipSilence(Z)V

    :cond_2
    return-void
.end method

.method protected final changeToDlnaDmrPlayer(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V
    .locals 1

    .line 1675
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestChangeToDmrPlayer(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V

    return-void
.end method

.method protected final changeToMediaPlayer(Z)V
    .locals 1

    .line 1679
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->changeToMediaPlayer(Z)V

    return-void
.end method

.method public completePlaying(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1035
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->next(ZZ)Z

    return-void
.end method

.method public completePlayingInternal(Z)V
    .locals 3

    .line 1028
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    const-string v1, "com.samsung.android.app.music.core.state.COMPLETE_PLAYING"

    const/4 v2, 0x0

    .line 1029
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1030
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->completePlaying(Z)V

    return-void
.end method

.method public dlnaDisconnectionRequested()V
    .locals 1

    .line 1655
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isStop()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->changeToMediaPlayer(Z)V

    :cond_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x5

    .line 692
    :try_start_0
    new-array p1, p1, [Lcom/samsung/android/app/musiclibrary/core/service/IDump;

    const/4 p3, 0x0

    aput-object p0, p1, p3

    const/4 p3, 0x1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    aput-object v0, p1, p3

    const/4 p3, 0x2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    aput-object v0, p1, p3

    const/4 p3, 0x3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    aput-object v0, p1, p3

    const/4 p3, 0x4

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ServerDump;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/server/ServerDump;

    aput-object v0, p1, p3

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->dump(Ljava/io/PrintWriter;[Lcom/samsung/android/app/musiclibrary/core/service/IDump;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 695
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 696
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There is an exception during dump : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 702
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "Debug.getPss() "

    .line 703
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 704
    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "Debug.getLoadedClassCount() "

    .line 705
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "Debug.getBinderDeathObjectCount() "

    .line 707
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "Debug.getBinderLocalObjectCount() "

    .line 709
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 710
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "Debug.getBinderProxyObjectCount() "

    .line 711
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 712
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "Debug.getBinderReceivedTransactions() "

    .line 713
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 714
    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "Debug.getBinderSentTransactions() "

    .line 715
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 716
    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "Debug.getRuntimeStats() "

    .line 717
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 718
    invoke-static {}, Landroid/os/Debug;->getRuntimeStats()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "# Features"

    .line 720
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  SEC_FLOATING_FEATURE_ALLSHARE_CONFIG_VERSION: "

    .line 721
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public duration()J
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public exit()V
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$5;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->fadeDown(Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V

    goto :goto_0

    .line 1085
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->exitInternal()V

    :goto_0
    return-void
.end method

.method public forward()V
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->forward()V

    return-void
.end method

.method public getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public getActivePlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method protected final getAudioId()J
    .locals 2

    .line 1833
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getCurAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getDlnaPlayingDmrId()Ljava/lang/String;
    .locals 1

    .line 1687
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getDmrId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraInformation(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    goto/16 :goto_1

    .line 1282
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getQueue()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1283
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1279
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getScreenOffMusic()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1276
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isBtConnected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1273
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getKeyWord()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1267
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getPlaySpeed()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1270
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getDmrId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1264
    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaySpeed()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1261
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getAudioSessionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1258
    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isHdmiConnected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1255
    :pswitch_a
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isConnectingWfd()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 1305
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    return-object v0
.end method

.method public getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getNextRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 1325
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getNotificationObserver()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 1310
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object v0
.end method

.method public getPlayingItemExtras()Landroid/os/Bundle;
    .locals 2

    .line 1294
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 1295
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_1

    .line 1297
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method public getPrevItem()Landroid/media/session/MediaSession$QueueItem;
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPrevItem()Landroid/media/session/MediaSession$QueueItem;

    move-result-object v0

    return-object v0
.end method

.method protected final getQueueKeyword()Ljava/lang/String;
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 1320
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 1330
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getRadioQueueExtras()Landroid/os/Bundle;
    .locals 1

    .line 1335
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getRepeat()I
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffle()I
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public hideNotification()V
    .locals 2

    const-string v0, "com.samsung.android.app.music.core.state.HIDE_NOTIFICATION"

    const/4 v1, 0x0

    .line 1050
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1051
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDefaultPlayer()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1052
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->changeToMediaPlayer(Z)V

    goto :goto_0

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->fadeDown(Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V

    .line 1061
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    goto :goto_0

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    .line 1067
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/AutoOffUtils;->removeAutoOffPendingIntent(Landroid/content/Context;)V

    return-void
.end method

.method protected final isSamePlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 1428
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v1

    .line 1429
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne v2, v1, :cond_2

    .line 1433
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1436
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    const-string p1, "SMUSIC-SV"

    .line 1437
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSamePlayingItem "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public final isShownNotification()Z
    .locals 1

    .line 1788
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    return v0
.end method

.method protected abstract isSupportNextMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
.end method

.method protected final isUserAction()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->isUserAction()Z

    move-result v0

    return v0
.end method

.method public mediaMounted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mediaMounted(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public mediaUnmounted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1549
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mediaUnmounted(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public moveQueueItem(II)V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveQueueItem(II)V

    return-void
.end method

.method public next()Z
    .locals 3

    .line 926
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setUserActionActive()V

    .line 927
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 928
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToNext(ZZ)V

    return v1
.end method

.method public next(ZZ)Z
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToNext(ZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    .line 472
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->clearRequest()V

    const/4 p1, 0x1

    .line 473
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceInUse:Z

    .line 474
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mBinder:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;

    if-nez p1, :cond_0

    .line 475
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mBinder:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadLastPlayingItem()V

    .line 481
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mBinder:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .locals 6

    const-string v0, "onCreate "

    .line 366
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    .line 367
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 368
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getPlayerLoggers()Landroid/util/SparseArray;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/util/SparseArray;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    const/4 v5, 0x3

    aput-object v3, v2, v5

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/receiver/StorageMountIntentReceiver;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/StorageMountIntentReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    const/4 v5, 0x4

    aput-object v3, v2, v5

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;-><init>(Landroid/content/Context;[Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mBroadcastReceiverController:Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

    .line 375
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mBroadcastReceiverController:Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->register()V

    .line 376
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCreatePlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCreateMusicContents()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCreateMultiPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 379
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setPlayerSettingManager(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V

    .line 380
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mAudioPathHandler:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;

    .line 381
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->addOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCreateServiceMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    .line 450
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCreatePlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 451
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V

    .line 452
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    .line 454
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    .line 457
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsSupportSmartVolume:Z

    if-eqz v1, :cond_0

    .line 458
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 459
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getSmartVolume()Z

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Z)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->startObserving()V

    .line 463
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->sCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    return-void
.end method

.method protected abstract onCreateMultiPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
.end method

.method protected abstract onCreateMusicContents()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
.end method

.method protected abstract onCreatePlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
.end method

.method protected abstract onCreatePlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
.end method

.method protected abstract onCreateServiceMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
.end method

.method public onCustomEvent(ILandroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    return-void
.end method

.method public onCustomEvent(ILjava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    const/16 v0, 0x27

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 1218
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mAudioPathHandler:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->notifyPathToBt()V

    goto/16 :goto_0

    .line 1215
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mAudioPathHandler:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->notifyPathToDevice()V

    goto/16 :goto_0

    .line 1171
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getServiceCallbackUpdater()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 1172
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getQueue()Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1210
    :pswitch_3
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1211
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSkipSilences(Z)V

    .line 1212
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setSkipSilence(Z)V

    goto :goto_0

    .line 1207
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setScreenOffMusic(Z)V

    goto :goto_0

    .line 1204
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setLockScreen(Z)V

    goto :goto_0

    .line 1196
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    if-nez p1, :cond_0

    return-void

    .line 1199
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1200
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->setSmartVolume(Z)V

    .line 1201
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setSmartVolume(Z)V

    goto :goto_0

    .line 1190
    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setPlaySpeed(F)V

    goto :goto_0

    .line 1184
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->volumeUp()V

    goto :goto_0

    .line 1187
    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->volumeDown()V

    goto :goto_0

    .line 1181
    :pswitch_a
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->changeMute()V

    goto :goto_0

    .line 1175
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/16 p2, 0x9

    .line 1176
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1177
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/16 v0, 0xa

    invoke-interface {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 1178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getServiceCallbackUpdater()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1193
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setPlaySpeed(F)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCustomEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.samsung.android.bt.AVRCP"

    .line 1232
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "repeat"

    .line 1233
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "repeat"

    .line 1234
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1235
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getRepeat()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 1236
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setInternalQueueMode(II)V

    :cond_0
    const-string p1, "shuffle"

    .line 1240
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "shuffle"

    .line 1241
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1242
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getShuffleMode()I

    move-result p2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    .line 1243
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setInternalQueueMode(II)V

    :cond_1
    return-void
.end method

.method public onDelayedStopService(I)V
    .locals 2

    .line 1733
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isServiceInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "delayedStopService refuse, service is in use."

    .line 1734
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1735
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopRequestCount:I

    return-void

    .line 1740
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopRequestCount:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->hasAsyncRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1741
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopRequestCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopRequestCount:I

    .line 1742
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestStopService()V

    return-void

    .line 1746
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayedStopService stopSelf startId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    .line 1747
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->stopSelf(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mBinder:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mBinder:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->release()V

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isShownNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->hideNotification()V

    .line 676
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->release()V

    .line 677
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->stopObserving()V

    const/4 v0, 0x0

    .line 678
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->sCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const-string v0, "onDestroy"

    .line 679
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->release()V

    .line 682
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->releaseAndStopThread()V

    .line 684
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->release()V

    .line 685
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mBroadcastReceiverController:Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->unregister()V

    .line 686
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const-string v0, "onLowMemory()"

    .line 665
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract onPlayerError(IILandroid/os/Bundle;)V
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRebind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    .line 496
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->clearRequest()V

    const/4 p1, 0x1

    .line 497
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceInUse:Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " startId "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    .line 512
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->clearRequest()V

    .line 513
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceCommandReceiver:Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;

    if-nez p2, :cond_0

    .line 514
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;

    .line 515
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getPlayerLoggers()Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/util/SparseArray;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceCommandReceiver:Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;

    .line 517
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->startReloadFirstQueue(Landroid/content/Intent;)V

    .line 518
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->startServiceCommand(Landroid/content/Intent;)V

    .line 519
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestStopService(I)V

    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskRemoved() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnbind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 503
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceInUse:Z

    .line 504
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestStopServiceInIdle()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onUpdateNetwork()V
    .locals 0

    return-void
.end method

.method public openQueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V
    .locals 4

    const-string v0, "SMUSIC-SV"

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openQueue play : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->playerOption:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;

    iget-boolean v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;->play:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " seekPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->playerOption:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;

    iget-wide v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;->seekPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setUserActionActive()V

    .line 739
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->playerOption:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;

    iget-wide v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;->seekPosition:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 740
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->playerOption:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;->play:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlayingByPlayerQueue(Z)V

    .line 741
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V

    return-void
.end method

.method public openQueueId(JIZ)V
    .locals 3

    const-string v0, "SMUSIC-SV"

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openQueueId id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " play : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setUserActionActive()V

    .line 757
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 758
    invoke-virtual {p0, p4}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlayingByPlayerQueue(Z)V

    .line 759
    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p4, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToQueueItem(JI)V

    return-void
.end method

.method public openQueuePosition(IIZ)V
    .locals 3

    const-string v0, "SMUSIC-SV"

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openQueuePosition position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " play : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setUserActionActive()V

    .line 748
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 749
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlayingByPlayerQueue(Z)V

    .line 750
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->movePosition(II)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    return-void
.end method

.method public play()V
    .locals 4

    .line 900
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setUserActionActive()V

    .line 901
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsFirstMetaNotified:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-SV"

    const-string v2, "play() change suppose to be playing true and waiting first meta notify"

    .line 902
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 909
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 910
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isSamePlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->play()V

    goto :goto_1

    .line 911
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 912
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlayingByPlayerQueue(Z)V

    .line 913
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getNowPlayingListPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->movePosition(II)V

    :goto_1
    return-void
.end method

.method public position()J
    .locals 2

    .line 982
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev(J)Z
    .locals 1

    .line 961
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setUserActionActive()V

    .line 962
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 963
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    const/4 p1, 0x1

    return p1
.end method

.method public prev(Z)Z
    .locals 6

    .line 940
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setUserActionActive()V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 942
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 943
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    goto :goto_0

    .line 945
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->position()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 946
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->prevInLimitMove()V

    goto :goto_0

    .line 948
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 949
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected prevInLimitMove()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 956
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->seek(J)J

    return-void
.end method

.method public privateModeOff()V
    .locals 2

    .line 1640
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isCurrentSongPrivateMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-SV"

    const-string v1, "Current song is private mode, thus release it, otherwise media server will die by private mode."

    .line 1641
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pause()V

    .line 1644
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->stop()V

    .line 1646
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isNextSongPrivateMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SMUSIC-SV"

    const-string v1, "Next song is private mode, thus release nextMediaplayer, otherwise media server will die by private mode."

    .line 1647
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    :cond_1
    return-void
.end method

.method public pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 1474
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1475
    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.queue.NOTIFY"

    .line 1476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "type"

    .line 1477
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1479
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->showMaximumQueueCountOverToast(Landroid/os/Bundle;)V

    return-void

    .line 1483
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public registerCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getServiceCallbackUpdater()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->registerCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    return-void
.end method

.method public registerNotification(ILandroid/app/Notification;)V
    .locals 2

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerNotification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1752
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNeedToStartForeground:Z

    .line 1753
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    const/4 v1, 0x1

    .line 1754
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    .line 1755
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->startForeground(ILandroid/app/Notification;)V

    if-nez v0, :cond_0

    .line 1757
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    .line 1759
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNeedToStartForeground:Z

    .line 1760
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startPlayerService()V

    .line 1761
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-lt p1, p2, :cond_0

    const-string p1, "activity"

    .line 1763
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 1764
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsBetteryOptimizationsShown:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager;->isBackgroundRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1765
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1766
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsBetteryOptimizationsShown:Z

    .line 1767
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected reloadFirstQueue(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1340
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadAudioIds()V

    goto :goto_0

    .line 1342
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    :goto_0
    return-void
.end method

.method public reloadMeta()V
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadMeta()V

    return-void
.end method

.method public reloadQueue()V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    return-void
.end method

.method public removeQueueAudioIds([J)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->removeTracks([J)V

    .line 806
    array-length p1, p1

    return p1
.end method

.method public removeQueuePosition([I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->removeTracksPositions([I)V

    .line 796
    array-length p1, p1

    return p1
.end method

.method protected final resetNowPlayingList()V
    .locals 2

    .line 1696
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->stop()V

    .line 1697
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->createEmptyRequest()Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;

    move-result-object v0

    .line 1698
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V

    return-void
.end method

.method public rewind()V
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->rewind()V

    return-void
.end method

.method public seek(J)J
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->seek(J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected final setDmrPlayerMode(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V
    .locals 1

    .line 1670
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDmrPlayerMode(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V

    return-void
.end method

.method public setHdmiConnected(Z)V
    .locals 1

    .line 1512
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setHdmiConnected(Z)V

    return-void
.end method

.method public setQueueMode(II)V
    .locals 0

    .line 821
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setInternalQueueMode(II)V

    return-void
.end method

.method public setSupposeToBePlaying(Z)V
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    return-void
.end method

.method protected setSupposeToBePlayingByPlayerQueue(Z)V
    .locals 0

    .line 996
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlaying(Z)V

    return-void
.end method

.method protected final setUserAction(Z)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->setUserAction(Z)V

    return-void
.end method

.method protected final setUserActionActive()V
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onUpdateNetwork()V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->setUserActionActive()V

    return-void
.end method

.method public setWfdState(I)V
    .locals 1

    .line 1502
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setWfdState(I)V

    return-void
.end method

.method public setWfdState(ZZ)V
    .locals 1

    .line 1507
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setWfdState(ZZ)V

    return-void
.end method

.method protected final showToast(I)V
    .locals 1

    .line 1377
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->ensureToastHandler()V

    .line 1378
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mToastHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->showToast(I)V

    return-void
.end method

.method protected final showToast(Ljava/lang/String;)V
    .locals 1

    .line 1385
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->ensureToastHandler()V

    .line 1386
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mToastHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method protected final skipToNextUntilMatchedErrorCount()V
    .locals 4

    .line 1875
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mErrorCount:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mErrorCount:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    .line 1876
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 1881
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mErrorCount:I

    .line 1882
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1883
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->next()Z

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1877
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mErrorCount:I

    .line 1878
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pause()V

    return-void
.end method

.method public startForward(I)V
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->startForward(I)V

    return-void
.end method

.method public startRewind(I)V
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->startRewind(I)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1040
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->stop(Z)V

    return-void
.end method

.method public stopForwardRewind(I)V
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->stop(I)V

    return-void
.end method

.method public toggleFavorite()V
    .locals 0

    return-void
.end method

.method public togglePlay()V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pause()V

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->play()V

    :goto_0
    return-void
.end method

.method public toggleQueueMode(I)I
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->toggleMode(I)I

    move-result p1

    return p1
.end method

.method public unregisterCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getServiceCallbackUpdater()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->unregisterCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    return-void
.end method

.method public final unregisterNotification(Z)V
    .locals 2

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterNotification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->printLifeCycleLog(Ljava/lang/String;)V

    .line 1776
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.state.FINISHED_HIDE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1777
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1778
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 1780
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNeedToStartForeground:Z

    .line 1781
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    .line 1782
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->cancelServiceTimeOut()V

    .line 1783
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->stopForeground(Z)V

    .line 1784
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestStopService()V

    return-void
.end method

.method public volumeChanged()V
    .locals 2

    .line 1662
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->resetBaseVolume(Z)V

    :cond_0
    return-void
.end method
