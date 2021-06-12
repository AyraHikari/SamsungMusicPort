.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IDump;
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/IPlaybackNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;,
        Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;,
        Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DRM_ACQUIRE_TYPE:Ljava/lang/String; = "play_ready_drm_acquire_type"

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Player"

.field private static final TAG:Ljava/lang/String; = "SV-Player"

.field private static final THREAD_NAME_PLAYER:Ljava/lang/String; = "smusic_player"


# instance fields
.field private final mAudioAttributes:Landroid/media/AudioAttributes;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

.field private final mBtControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

.field private final mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

.field private final mContext:Landroid/content/Context;

.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field private final mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

.field private mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

.field private mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

.field private mDuration:J

.field private mHasError:Z

.field private mIgnoreNoisy:Z

.field private mIsConnectingWfd:Z

.field private mIsDrm:Z

.field private mIsFirstMediaRequest:Z

.field private mIsHdmiConnected:Z

.field private mIsRelease:Ljava/lang/Boolean;

.field private final mIsSmartViewChromeCastSupported:Z

.field private mLastPlayedSong:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;

.field private final mMediaControlThread:Landroid/os/HandlerThread;

.field private mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field private mPathType:I

.field private mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

.field private final mPlayerEventLogger:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;

.field private mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private mPlayerState:I

.field private final mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

.field private mPlayerType:I

.field private mPosition:J

.field private mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private mSkipDrmPath:Ljava/lang/String;

.field private final mUnmountedUri:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWasHandledStreamingError:Z

.field private mWasPlaying:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;)V
    .locals 4

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerEventLogger:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;

    .line 112
    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mUnmountedUri:Landroid/util/LruCache;

    const/4 v0, 0x0

    .line 116
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsRelease:Ljava/lang/Boolean;

    .line 137
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsDrm:Z

    .line 139
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mWasHandledStreamingError:Z

    .line 141
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsHdmiConnected:Z

    .line 143
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mHasError:Z

    const/4 v2, 0x1

    .line 145
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsFirstMediaRequest:Z

    .line 147
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    .line 149
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerState:I

    .line 975
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    .line 1113
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    .line 1115
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIgnoreNoisy:Z

    .line 1205
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPathType:I

    .line 157
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 158
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "smusic_player"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mMediaControlThread:Landroid/os/HandlerThread;

    .line 159
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mMediaControlThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 160
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mMediaControlThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 161
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    .line 163
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isOverO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 166
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioAttributes:Landroid/media/AudioAttributes;

    goto :goto_0

    .line 168
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 170
    :goto_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;-><init>(Landroid/content/Context;Landroid/media/AudioAttributes;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setOnPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;)V

    .line 173
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, p2, p1, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Landroid/media/AudioAttributes;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

    .line 175
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    invoke-direct {v0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mBtControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    .line 176
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mBtControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->bindAdapter()V

    .line 178
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    .line 179
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    if-eqz p1, :cond_1

    .line 180
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    .line 181
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;->setCustomErrorListener(Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer$OnCustomErrorListener;)V

    .line 206
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;->enable()V

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    .line 209
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isSmartViewChromeCastSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsSmartViewChromeCastSupported:Z

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->saveCurrentPlayedPosition()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->ensureCustomErrorContainer(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;J)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->saveCurrentPlayedPosition(J)V

    return-void
.end method

.method static synthetic access$1402(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIgnoreNoisy:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->notifyPlaybackSoundPathChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mWasHandledStreamingError:Z

    return p0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mWasHandledStreamingError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;II)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerState:I

    return p0
.end method

.method static synthetic access$902(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerState:I

    return p1
.end method

.method private cancelDataSource()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->releaseDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 373
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->nextSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->releaseDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    :cond_0
    return-void
.end method

.method private dumpPlayingItem(Ljava/io/PrintWriter;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 2

    if-nez p2, :cond_0

    const-string p2, "  playing item is null"

    .line 1324
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1326
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Meta title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  source id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  file path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private ensureCustomErrorContainer(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 343
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;->enable()V

    goto :goto_0

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;->disable()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getExtraData(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Landroid/os/Bundle;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 500
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getExtraData()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private getFilePath()Ljava/lang/String;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleErrorScheme(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;Landroid/net/Uri;)V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->reset(Z)V

    .line 450
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem$ERROR_URI;->getErrorExtra(Landroid/net/Uri;)I

    move-result p2

    const-string v1, "content_error"

    .line 452
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    .line 453
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(II)Z

    goto :goto_0

    :cond_0
    const-string v1, "playing_quality"

    .line 454
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, -0x2bc

    if-eqz v1, :cond_1

    .line 455
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(II)Z

    goto :goto_0

    .line 456
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    if-eqz v1, :cond_2

    const-string v1, "cache_error"

    .line 457
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;->notifyError(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string p1, "drm_error"

    .line 459
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, -0x320

    .line 460
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(II)Z

    goto :goto_0

    :cond_3
    const-string p1, "streaming_server_error"

    .line 461
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 462
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->extraData:Landroid/os/Bundle;

    invoke-direct {p0, v2, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 464
    :cond_4
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(II)Z

    :goto_0
    return-void
.end method

.method private handleExtraErrors(II)Z
    .locals 1

    const/4 v0, 0x0

    .line 937
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private handleExtraErrors(IILandroid/os/Bundle;)Z
    .locals 3

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleExtraErrors what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 942
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mHasError:Z

    const/4 v1, 0x7

    .line 943
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerState:I

    .line 944
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerState:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onPlayerStateChanged(I)V

    .line 945
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->isQuit()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/16 v1, -0x384

    if-eq p1, v1, :cond_3

    const/16 v1, -0x320

    if-eq p1, v1, :cond_3

    const/16 v1, -0x2bc

    if-eq p1, v1, :cond_3

    const/16 v1, -0x16

    if-eq p1, v1, :cond_3

    const/16 v1, -0x13

    if-eq p1, v1, :cond_3

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    const/16 v1, 0x64

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    const/16 v1, -0x7d1

    if-ne p2, v1, :cond_1

    return v2

    .line 958
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onError(IILandroid/os/Bundle;)V

    return v0

    .line 950
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onServerDied()V

    return v0

    .line 967
    :cond_3
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onError(IILandroid/os/Bundle;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ignoreNoisyIntent()V
    .locals 4

    const/4 v0, 0x1

    .line 1162
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIgnoreNoisy:Z

    .line 1164
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1165
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isEmptyPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 1

    .line 289
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static isOverO()Z
    .locals 2

    .line 1447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPlayableDrm(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Z
    .locals 5

    const/4 v0, 0x1

    .line 518
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsDrm:Z

    const/4 v1, 0x0

    .line 519
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mSkipDrmPath:Ljava/lang/String;

    .line 523
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setPlayReadyListener(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)V

    .line 524
    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->b(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "type"

    .line 525
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "SV-Player"

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource() this is DRM case drm type :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x18

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0xb

    if-ne v1, v0, :cond_2

    .line 537
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mSkipDrmPath:Ljava/lang/String;

    .line 539
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onDrmRequest(Landroid/os/Bundle;)V

    const-string p1, "SV-Player"

    .line 540
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDataSource() send drm type :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private isUnmountedPathPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mUnmountedUri:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 330
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mUnmountedUri:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 332
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 333
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method private notifyErrorIfUnmountedPath(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 4

    .line 313
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isUnmountedPathPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->reset(Z)V

    .line 316
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendErrorMsg(IILandroid/os/Bundle;)V

    return v1

    :cond_0
    return v0
.end method

.method private notifyPlaybackSoundPathChanged()V
    .locals 2

    .line 1222
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getSoundPathType()I

    move-result v0

    .line 1223
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPathType:I

    if-eq v1, v0, :cond_0

    .line 1224
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPathType:I

    .line 1226
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onSoundPathChanged(I)V

    :cond_0
    return-void
.end method

.method private play(Z)V
    .locals 2

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play requestAudioFocus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1059
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->isEnableToPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1061
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause(Z)V

    return-void

    .line 1065
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isEmptyPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 1070
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 1071
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 1073
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->requestAudioFocus()I

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1075
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->fade(F)V

    .line 1076
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->start()V

    goto :goto_0

    .line 1078
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->reloadPlayingItemIfStopped()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1079
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestCurrentDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    :cond_4
    :goto_0
    return-void

    .line 1066
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    return-void
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-Player"

    .line 1261
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-Player"

    .line 1257
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printTspLog(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "SMUSIC-SV-Player"

    .line 1265
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "TSP %-15s | %10s ms | %-20s ~ %-20s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 1266
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v3, p1

    const/4 p0, 0x2

    aput-object p3, v3, p0

    const/4 p0, 0x3

    aput-object p4, v3, p0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1265
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerRouteCallback()V
    .locals 3

    .line 1271
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    if-eqz v0, :cond_0

    return-void

    .line 1274
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$5;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 1287
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    const-string v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    const/4 v1, 0x4

    .line 1288
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    return-void
.end method

.method private releaseDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->cancel()V

    return-void
.end method

.method private requestChangeToDefaultPlayer(Z)V
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->changeToDefaultPlayer(Z)V

    return-void
.end method

.method private requestCurrentDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasPendingData()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "requestCurrentDataSource() but there is progress request. Ignore this request."

    .line 353
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    return-void

    .line 357
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    return-void
.end method

.method private restoreLastPlayedPosition(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 4

    .line 1363
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mLastPlayedSong:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;

    if-nez v0, :cond_0

    return-void

    .line 1366
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 1368
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mLastPlayedSong:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;->getLastPlayedPosition(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)J

    move-result-wide v0

    .line 1369
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    :cond_1
    return-void
.end method

.method private saveCurrentPlayedPosition()V
    .locals 2

    .line 1374
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getCurrentPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->saveCurrentPlayedPosition(J)V

    return-void
.end method

.method private saveCurrentPlayedPosition(J)V
    .locals 2

    .line 1378
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mLastPlayedSong:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;

    if-nez v0, :cond_0

    return-void

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mLastPlayedSong:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;->saveLastPosition(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;J)V

    return-void
.end method

.method private setDataSourceAndThrowIfError(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 417
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mWasHandledStreamingError:Z

    .line 418
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getExtraData(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->extraData:Landroid/os/Bundle;

    .line 419
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 421
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->reset(Z)V

    const/4 p1, -0x1

    .line 422
    invoke-direct {p0, p1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(II)Z

    return-void

    :cond_0
    const-string v3, "error"

    .line 425
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleErrorScheme(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;Landroid/net/Uri;)V

    return-void

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->notifyErrorIfUnmountedPath(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 432
    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 433
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    move-result-object v3

    if-eqz v1, :cond_4

    .line 434
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mSkipDrmPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 435
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlayableDrm(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto :goto_0

    .line 438
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mHasError:Z

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 441
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mSkipDrmPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsDrm:Z

    const/4 v0, 0x0

    .line 442
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mSkipDrmPath:Ljava/lang/String;

    .line 444
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    :goto_0
    return-void
.end method

.method private setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    return-void
.end method

.method private setPlayReadyListener(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)V
    .locals 1

    .line 546
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;)V

    return-void
.end method

.method private start()V
    .locals 2

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " start() mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 703
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mWasHandledStreamingError:Z

    .line 704
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->clearPausedByAudioFocus()V

    .line 705
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->start()V

    return-void
.end method

.method private unregisterRouteCallback()V
    .locals 2

    .line 1292
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    if-nez v0, :cond_0

    return-void

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    const-string v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    .line 1296
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->abandonAudioFocus()V

    return-void
.end method

.method public addOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->addOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V

    return-void
.end method

.method public becomingNoisy()V
    .locals 3

    const-string v0, "SMUSIC-SV-Player"

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "becomingNoisy() mIgnoreNoisy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIgnoreNoisy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIgnoreNoisy:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isRemotePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1089
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public changeMute()V
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setCustomAction(I)V

    return-void
.end method

.method public changeToMediaPlayer(Z)V
    .locals 4

    .line 1184
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1189
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->ignoreNoisyIntent()V

    .line 1192
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1193
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1197
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendErrorMsg(IILandroid/os/Bundle;)V

    .line 1202
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestChangeToDefaultPlayer(Z)V

    return-void
.end method

.method public changeToWfdDevice()V
    .locals 2

    const-string v0, "changeToWfdDevice"

    .line 1175
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1176
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    .line 1177
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onBuffering(Z)V

    .line 1180
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->changeToMediaPlayer(Z)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isDmrPlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "# AudioFocus"

    .line 1303
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  isPausedByAudioFocus: "

    .line 1304
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->isPausedByAudioFocus()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  hasAudioFocus: "

    .line 1306
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->hasAudioFocus()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "# PlayingItem"

    .line 1309
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->dumpPlayingItem(Ljava/io/PrintWriter;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    const-string v0, "# NextPlayingItem"

    .line 1312
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getNextDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1314
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->dumpPlayingItem(Ljava/io/PrintWriter;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    const-string v0, "# PlayerController"

    .line 1316
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->dump(Ljava/io/PrintWriter;)V

    .line 1319
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerEventLogger:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public duration()J
    .locals 4

    .line 747
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getDuration()J

    move-result-wide v0

    .line 748
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mDuration:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 749
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mDuration:J

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " duration() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method public fade(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1097
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->fade(FLcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V

    return-void
.end method

.method public fade(FLcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->fade(FLcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V

    return-void
.end method

.method getActiveQueueItemId()J
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getQueueItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getAudioSessionId()I

    move-result v0

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getAudioSessionId() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    return v0
.end method

.method public getBufferingPercent()I
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getBufferingPercent()I

    move-result v0

    return v0
.end method

.method public getCurrentExtraData()Landroid/os/Bundle;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 493
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->extraData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDmrId()Ljava/lang/String;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getDmrId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-object v0
.end method

.method public getPlaySpeed()F
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getPlaySpeed()F

    move-result v0

    return v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method getPlayerController()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    return-object v0
.end method

.method public getPlayerState()I
    .locals 1

    .line 867
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerState:I

    return v0
.end method

.method public getPlayerType()I
    .locals 1

    .line 843
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    return v0
.end method

.method public getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 485
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-object v0
.end method

.method getSoundPathType()I
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    .line 1211
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isChromeCastConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1213
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isHdmiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    .line 1215
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isBtConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x3

    :goto_1
    return v0
.end method

.method internalChangeToCastPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 688
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    .line 690
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->release()V

    .line 691
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-direct {v2, v3, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    .line 692
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposedToBePlaying(Z)V

    .line 693
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setOnPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;)V

    .line 694
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposeToBePlayingPosition(J)V

    const/4 p1, 0x3

    .line 696
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    .line 698
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    return-void
.end method

.method internalChangeToDefaultPlayer(Z)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 638
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    .line 642
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    .line 644
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->release()V

    .line 646
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;-><init>(Landroid/content/Context;Landroid/media/AudioAttributes;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    .line 647
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setOnPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;)V

    .line 648
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setPlayerSettingManager(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V

    .line 649
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposedToBePlaying(Z)V

    .line 650
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposeToBePlayingPosition(J)V

    const/4 v0, 0x1

    .line 652
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    .line 653
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onPlayerChanged()V

    .line 655
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 656
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onBuffering(Z)V

    if-eqz p1, :cond_2

    .line 659
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerState()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onPlayerStateChanged(I)V

    :cond_2
    return-void
.end method

.method internalChangeToDmrPlayer(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 672
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDmrPlayerMode(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V

    .line 673
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    return-void
.end method

.method public isBtConnected()Z
    .locals 1

    .line 1231
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mBtControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mBtControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->isBtConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuffering()Z
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isBuffering()Z

    move-result v0

    return v0
.end method

.method public isConnectingWfd()Z
    .locals 1

    .line 1118
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    return v0
.end method

.method public isDefaultPlayer()Z
    .locals 2

    .line 847
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDmrPlaying()Z
    .locals 2

    .line 851
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDrm()Z
    .locals 1

    .line 818
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsDrm:Z

    return v0
.end method

.method public isGoingToOtherSong()Z
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isGoingToOtherSong()Z

    move-result v0

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

.method public isGoingToTrackEnd()Z
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->isGoingToTrackEnd()Z

    move-result v0

    return v0
.end method

.method public isHdmiConnected()Z
    .locals 1

    .line 1253
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsHdmiConnected:Z

    return v0
.end method

.method public isNotInitializedAndNoError()Z
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mHasError:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPausedByAudioFocus()Z
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->isPausedByAudioFocus()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 786
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isPlaying()Z

    move-result v0

    .line 787
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mWasPlaying:Z

    if-eq v1, v0, :cond_0

    .line 788
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mWasPlaying:Z

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isPlaying() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isPrepared()Z

    move-result v0

    return v0
.end method

.method public isPreparing()Z
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isPreparing()Z

    move-result v0

    return v0
.end method

.method public isRemotePlaying()Z
    .locals 2

    .line 855
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

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

.method public isStop()Z
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isStop()Z

    move-result v0

    return v0
.end method

.method public isSupportPlaySpeed()Z
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isSupportPlaySpeed()Z

    move-result v0

    return v0
.end method

.method public mediaMounted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    const-string v0, "SMUSIC-SV-Player"

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaMounted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uri "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mUnmountedUri:Landroid/util/LruCache;

    invoke-virtual {p1, p2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public mediaUnmounted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    const-string v0, "SMUSIC-SV-Player"

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaUnmounted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uri "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 299
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mUnmountedUri:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-eqz p1, :cond_1

    .line 304
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->notifyErrorIfUnmountedPath(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    .line 305
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 306
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isUnmountedPathPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 307
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyPlaybackState()V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->notifyPlaybackState()V

    return-void
.end method

.method public notifyPlaybackStateAsPause()V
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->notifyPlaybackStateAsPause()V

    .line 1241
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->pause()V

    return-void
.end method

.method public notifyQueueComplete()V
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setCustomAction(I)V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 709
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause(Z)V

    return-void
.end method

.method pause(Z)V
    .locals 2

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " pause() mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 715
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->clearPausedByAudioFocus()V

    :cond_0
    const/4 p1, 0x0

    .line 717
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 718
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->pause()V

    .line 719
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerEventLogger:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;->saveStack()V

    .line 720
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->saveCurrentPlayedPosition()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->hasAudioFocus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->play(Z)V

    return-void
.end method

.method playWithoutAudioFocus()V
    .locals 1

    const/4 v0, 0x0

    .line 1054
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->play(Z)V

    return-void
.end method

.method public position()J
    .locals 6

    .line 762
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getCurrentPosition()J

    move-result-wide v0

    .line 763
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPosition:J

    const-wide/16 v4, 0x1388

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 764
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPosition:J

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " position() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method public releaseAndStopThread()V
    .locals 2

    const-string v0, "release()"

    .line 231
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 232
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsRelease:Ljava/lang/Boolean;

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->cancelDataSource()V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->abandonAudioFocus()V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mBtControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->release()V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;->setCustomErrorListener(Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer$OnCustomErrorListener;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;->disable()V

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsSmartViewChromeCastSupported:Z

    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->unregisterRouteCallback()V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->removeAllCommand()V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->quit()V

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->stop()V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->release()V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mMediaControlThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public reloadCurrentPlayingItem()Z
    .locals 2

    .line 1340
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->reloadPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;Z)Z

    move-result v0

    return v0
.end method

.method public reloadPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;Z)Z
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "SMUSIC-SV-Player"

    const-string p2, "reloadPlayingItem null data source requested!"

    .line 1345
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 1348
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1350
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mLastPlayedSong:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;

    if-eqz v2, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mLastPlayedSong:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;->getLastPlayedPosition(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)J

    move-result-wide v0

    :cond_1
    if-eqz p2, :cond_2

    .line 1355
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->stop()V

    .line 1357
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1358
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestCurrentDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    const/4 p1, 0x1

    return p1
.end method

.method public reloadPlayingItemIfStopped()Z
    .locals 2

    .line 1333
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mHasError:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1334
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->reloadCurrentPlayingItem()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->removeOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V

    return-void
.end method

.method public requestChangeToCastPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;)V
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->changeToCastPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;)V

    return-void
.end method

.method public requestChangeToDmrPlayer(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V
    .locals 0

    .line 623
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 624
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    .line 625
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->changeToDmrPlayer(Ljava/lang/String;)V

    return-void
.end method

.method public requestSetDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 5

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsRelease:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SMUSIC-SV-Player"

    const-string v0, "requestSetDataSourceInBackground But already released. Ignore this request."

    .line 260
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->cancelDataSource()V

    .line 265
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 266
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    const-string v2, "SV-Player"

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSetDataSourceInBackground() id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->ensureCustomErrorContainer(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->reset(Z)V

    .line 273
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->reset()V

    .line 274
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isEmptyPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->stop()V

    goto :goto_0

    .line 277
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsFirstMediaRequest:Z

    if-eqz v0, :cond_2

    .line 278
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->restoreLastPlayedPosition(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    :cond_2
    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsFirstMediaRequest:Z

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 283
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsSmartViewChromeCastSupported:Z

    if-eqz p1, :cond_3

    .line 284
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->registerRouteCallback()V

    :cond_3
    return-void
.end method

.method public requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;I)V

    return-void
.end method

.method public requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;I)V
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;I)V

    const-string v0, "SV-Player"

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetNextDataSourceInBackground() id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 367
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " delay : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, " reset()"

    .line 737
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->reset(Z)V

    return-void
.end method

.method public seek(J)J
    .locals 2

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " seek() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->seekTo(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public setCrossFade(I)V
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setCrossFade(I)V

    return-void
.end method

.method public setCurrentDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->cancelDataSource()V

    .line 477
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-void
.end method

.method setCurrentVolume(F)V
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setCurrentVolume(F)V

    return-void
.end method

.method setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 4

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource() mCurrentState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "source is null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 397
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 399
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mHasError:Z

    if-eqz p1, :cond_2

    .line 400
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isEmptyPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 407
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDataSourceAndThrowIfError(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 409
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->reset(Z)V

    const/4 v0, -0x1

    .line 410
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(II)Z

    .line 411
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 401
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 402
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->stop()V

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->reset()V

    return-void
.end method

.method public setDmrPlayerMode(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V
    .locals 10

    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    .line 595
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 596
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposeToBePlayingPosition(J)V

    .line 597
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setDmrId(Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->release()V

    .line 601
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mMediaControlThread:Landroid/os/HandlerThread;

    .line 602
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v4, v2

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    .line 604
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposedToBePlaying(Z)V

    .line 605
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setOnPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;)V

    .line 606
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposeToBePlayingPosition(J)V

    .line 608
    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    .line 609
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onPlayerChanged()V

    .line 613
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    const-string p2, "DLNA"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setHdmiConnected(Z)V
    .locals 1

    .line 1245
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsHdmiConnected:Z

    if-eq v0, p1, :cond_0

    .line 1246
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsHdmiConnected:Z

    .line 1248
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->notifyPlaybackSoundPathChanged()V

    :cond_0
    return-void
.end method

.method setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 504
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isUnmountedPathPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 505
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 506
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto :goto_0

    .line 508
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 509
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    :goto_0
    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setPlaySpeed(F)V

    return-void
.end method

.method public setPlayerSettingManager(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
    .locals 2

    .line 221
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setPlayerSettingManager(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V

    .line 223
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mLastPlayedSong:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;

    return-void
.end method

.method public setSkipSilences(Z)V
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSkipSilences(Z)V

    return-void
.end method

.method public setSupposeToBePlaying(Z)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposedToBePlaying(Z)V

    return-void
.end method

.method public setSupposeToBePlayingPosition(J)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposeToBePlayingPosition(J)V

    return-void
.end method

.method public setWfdState(I)V
    .locals 2

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWfdState() state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    .line 1123
    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTING:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 1124
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    goto :goto_0

    .line 1125
    :cond_0
    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTED:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 1126
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1127
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->changeToWfdDevice()V

    .line 1133
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    if-eqz p1, :cond_3

    .line 1134
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    .line 1135
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onBuffering(Z)V

    goto :goto_0

    .line 1144
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    if-eqz p1, :cond_3

    .line 1145
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    .line 1146
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onBuffering(Z)V

    .line 1149
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->notifyPlaybackSoundPathChanged()V

    return-void
.end method

.method public setWfdState(ZZ)V
    .locals 3

    const-string v0, "SV-Player"

    .line 1153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfdState connected? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " byUser? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 1155
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->ignoreNoisyIntent()V

    .line 1157
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onBuffering(Z)V

    .line 1158
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 724
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->stop(Z)V

    return-void
.end method

.method public stop(Z)V
    .locals 1

    const-string v0, " stop()"

    .line 728
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->clearPausedByAudioFocus()V

    if-eqz p1, :cond_0

    .line 731
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->saveCurrentPlayedPosition()V

    .line 733
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->stop()V

    return-void
.end method

.method public volumeDown()V
    .locals 2

    .line 911
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setCustomAction(I)V

    return-void
.end method

.method public volumeUp()V
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setCustomAction(I)V

    return-void
.end method
