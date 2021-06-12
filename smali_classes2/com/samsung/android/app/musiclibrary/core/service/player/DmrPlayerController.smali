.class final Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$BufferingState;
    }
.end annotation


# static fields
.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerDMR"

.field private static final TAG:Ljava/lang/String; = "SV-PlayerDMR"

.field private static final WINDOWS_MEDIA_PLAYER:Ljava/lang/String; = "Windows Media Player"


# instance fields
.field private mBufferingState:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field private final mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

.field private final mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

.field private mDmrId:Ljava/lang/String;

.field private mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

.field private mDmrPlayerState:I

.field private mDmrStatusInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

.field private mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

.field private mIsDmrPlaying:Z

.field private mIsReleased:Z

.field private mIsSupposedToBePlaying:Z

.field private mIsTemporaryError:Z

.field private final mLooper:Landroid/os/Looper;

.field private mNeedNotifyDlnaState:Z

.field private mNeedRequest:Z

.field private final mOnCompletionListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

.field private final mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

.field private final mOnMediaInfoListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;

.field private mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

.field private final mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

.field private mPlaybackState:I

.field private mScreenSharingVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

.field private mSeekPosition:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V
    .locals 4

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mPlaybackState:I

    .line 74
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    .line 77
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrPlaying:Z

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsTemporaryError:Z

    .line 84
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedNotifyDlnaState:Z

    .line 86
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedRequest:Z

    .line 88
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsReleased:Z

    const-wide/16 v2, 0x0

    .line 90
    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    .line 693
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

    .line 786
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    .line 822
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnCompletionListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

    .line 845
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$5;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnMediaInfoListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;

    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mLooper:Landroid/os/Looper;

    .line 116
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 117
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    const-string p2, "power"

    .line 119
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 122
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->setDmrId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    return p0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)I
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->bitOn(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mScreenSharingVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsSupposedToBePlaying:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrPlaying:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;IIZ)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->handleDmrError(IIZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->handleDmrError(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->hasBit(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyPlayerStateChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)I
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->bitOff(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedRequest:Z

    return p0
.end method

.method static synthetic access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedRequest:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    return p0
.end method

.method static synthetic access$802(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedNotifyDlnaState:Z

    return p0
.end method

.method static synthetic access$902(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedNotifyDlnaState:Z

    return p1
.end method

.method private bitOff(II)I
    .locals 0

    not-int p2, p2

    and-int/2addr p1, p2

    return p1
.end method

.method private bitOn(II)I
    .locals 0

    or-int/2addr p1, p2

    return p1
.end method

.method private changeMute()V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    if-nez v0, :cond_0

    const-string v0, "SV-PlayerDMR"

    const-string v1, "changeMute DMR player wasn\'t prepared"

    .line 645
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->changeMute()V

    return-void
.end method

.method private createDmrPlayer(Ljava/lang/String;)Z
    .locals 3

    .line 534
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->releaseDmrPlayer()V

    .line 538
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->createSecAVPlayer(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 542
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .line 543
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->setOnStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;)V

    .line 544
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->setOnErrorListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;)V

    .line 545
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnCompletionListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->setOnCompletionListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;)V

    .line 546
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnMediaInfoListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->setOnMediaInfoListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;)V

    .line 547
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->initializeVolumeController(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;)V

    const/4 v0, 0x1

    .line 549
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    .line 550
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->getDmrStatusInfo()Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrStatusInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    .line 551
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrStatusInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;->setUpData(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;)V

    .line 552
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    sget v1, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_CONNECTING:I

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;->send(I)V

    .line 553
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedNotifyDlnaState:Z

    return v0
.end method

.method private getPlayingPath(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 522
    :try_start_0
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 524
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 525
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->handleDmrError(Z)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 530
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleDmrError(IIZ)V
    .locals 2

    const/4 v0, 0x1

    .line 598
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    xor-int/lit8 v1, p3, 0x1

    .line 599
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsTemporaryError:Z

    const/4 v1, 0x0

    .line 601
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    .line 602
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyPlayerStateChanged(Z)V

    if-eqz p3, :cond_0

    .line 604
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onError(II)Z

    .line 607
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    sget p2, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_ERROR:I

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;->send(I)V

    .line 608
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedNotifyDlnaState:Z

    return-void
.end method

.method private handleDmrError(Z)V
    .locals 1

    const/4 v0, -0x1

    .line 594
    invoke-direct {p0, v0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->handleDmrError(IIZ)V

    return-void
.end method

.method private hasBit(II)Z
    .locals 0

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private initializeVolumeController(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;)V
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isSmartViewVolumeControlSupported(Landroid/content/Context;)Z

    move-result v0

    .line 559
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;Z)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    if-eqz v0, :cond_0

    .line 561
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mScreenSharingVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    :cond_0
    return-void
.end method

.method private isCurrentDataSourceEmpty()Z
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-eqz v0, :cond_1

    .line 513
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method private isPlayable(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Z
    .locals 3

    .line 264
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 266
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    .line 269
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isDrmFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "SV-PlayerDMR"

    const-string v0, "isPlayable Current meta is DRM."

    .line 270
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 273
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 277
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrStatusInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrStatusInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->deviceName:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrStatusInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->deviceName:Ljava/lang/String;

    const-string v0, "Windows Media Player"

    .line 278
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "SV-PlayerDMR"

    const-string v0, "isPlayable The connected device is Windows Media Player."

    .line 279
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isRequestingDmrCommand()Z
    .locals 3

    const-string v0, "SV-PlayerDMR"

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRequestingDmrCommand mBufferingState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    .line 613
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyBufferingStateChanged(I)V
    .locals 2

    .line 618
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    if-ne v0, p1, :cond_0

    const-string p1, "SV-PlayerDMR"

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBufferingStateChanged but same state. ignore this. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    .line 620
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz v0, :cond_2

    .line 624
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const-string p1, "SMUSIC-SV-PlayerDMR"

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBufferingStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    .line 626
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onBuffering(Z)V

    :cond_2
    return-void
.end method

.method private notifyPlayerStateChanged(Z)V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isPreparing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isBuffering()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 683
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isStop()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x6

    .line 686
    :cond_4
    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrPlaying:Z

    .line 687
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mPlaybackState:I

    if-eq v0, p1, :cond_5

    .line 688
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mPlaybackState:I

    .line 689
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onPlayerStateChanged(I)V

    :cond_5
    return-void
.end method

.method private releaseDmrPlayer()V
    .locals 2

    const/4 v0, 0x2

    .line 567
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    .line 571
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mScreenSharingVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mScreenSharingVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->release()V

    .line 573
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mScreenSharingVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->release()V

    .line 577
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 580
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    .line 581
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->stop()V

    .line 582
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->releaseSecAVPlayer()V

    .line 583
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->setOnStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;)V

    .line 584
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->setOnErrorListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;)V

    .line 585
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->setOnCompletionListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;)V

    .line 586
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->setOnMediaInfoListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;)V

    .line 587
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .line 588
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrStatusInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    :cond_2
    const/4 v0, 0x1

    .line 590
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    return-void
.end method

.method private setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 9

    const-string v0, "SV-PlayerDMR"

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSourceInternal uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v1, "android.media.metadata.AUTHOR"

    .line 293
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->getPlayingPath(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SMUSIC-SV-PlayerDMR"

    const-string v0, "setDataSourceInternal path is null so can\'t play now."

    .line 297
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 302
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 303
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const-string v6, "audio/mpeg"

    iget-wide v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1

    goto :goto_0

    .line 307
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->play(Ljava/lang/String;J)Z

    move-result p1

    :goto_0
    const-wide/16 v0, 0x0

    .line 310
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    if-nez p1, :cond_2

    .line 311
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsReleased:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedRequest:Z

    const-string v0, "SV-PlayerDMR"

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSourceInternal request to play: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", need to request again: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedRequest:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private volumeDown()V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    if-nez v0, :cond_0

    const-string v0, "SV-PlayerDMR"

    const-string v1, "volumeDown DMR player wasn\'t prepared"

    .line 667
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->volumeDown()V

    return-void
.end method

.method private volumeUp()V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    if-nez v0, :cond_0

    const-string v0, "SV-PlayerDMR"

    const-string v1, "volumeUp DMR player wasn\'t prepared"

    .line 656
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->volumeUp()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupposedToBePlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsSupposedToBePlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsDmrPlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrPlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDmrPlayerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  buffering percent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->getBufferingPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  current position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  session id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public fade(FLcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V
    .locals 0

    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getBufferingPercent()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-SV-PlayerDMR"

    const-string v3, "mDmrPlayer is null. Please check your routine."

    .line 368
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 372
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsTemporaryError:Z

    if-eqz v0, :cond_2

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->getCurrentPosition()J

    move-result-wide v1

    :cond_2
    return-wide v1
.end method

.method public getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-object v0
.end method

.method public getDmrId()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-SV-PlayerDMR"

    const-string v3, "mDmrPlayer is null. Please check your routine."

    .line 355
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 359
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->getDuration()J

    move-result-wide v1

    :cond_1
    return-wide v1
.end method

.method public getPlaySpeed()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public isBuffering()Z
    .locals 1

    .line 501
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isRequestingDmrCommand()Z

    move-result v0

    return v0
.end method

.method public isGoingToOtherSong()Z
    .locals 2

    .line 506
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const/4 v1, 0x4

    .line 507
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->hasBit(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const/16 v1, 0x20

    .line 508
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->hasBit(II)Z

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

.method public isInitialized()Z
    .locals 2

    .line 475
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsTemporaryError:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

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

.method public isPlaying()Z
    .locals 1

    .line 491
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrPlaying:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 2

    .line 486
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreparing()Z
    .locals 2

    .line 480
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const/16 v1, 0x8

    .line 481
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->hasBit(II)Z

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

.method public isStop()Z
    .locals 3

    .line 496
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isSupportPlaySpeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 4

    const-string v0, "SMUSIC-SV-PlayerDMR"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause mCurrentState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)V

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    .line 167
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->a(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isRequestingDmrCommand()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    if-nez v0, :cond_1

    const-string v0, "SMUSIC-SV-PlayerDMR"

    const-string v1, "mDmrPlayer is null. Please check your routine."

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 180
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->bitOn(II)I

    move-result v0

    .line 181
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->pause()V

    goto :goto_0

    .line 183
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyPlayerStateChanged(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsReleased:Z

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    sget v1, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_NOT_CONNECTED:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;->send(I)V

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedNotifyDlnaState:Z

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->releaseDmrPlayer()V

    const/4 v1, 0x0

    .line 212
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrId:Ljava/lang/String;

    .line 213
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedRequest:Z

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 217
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 219
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    return-void
.end method

.method public reset(Z)V
    .locals 0

    return-void
.end method

.method public seekTo(J)J
    .locals 2

    .line 338
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isRequestingDmrCommand()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->bitOn(II)I

    move-result v0

    .line 344
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->seek(J)V

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 p1, -0x1

    return-wide p1

    :cond_2
    :goto_1
    return-wide p1
.end method

.method public setCrossFade(I)V
    .locals 0

    return-void
.end method

.method public setCurrentVolume(F)V
    .locals 0

    return-void
.end method

.method public setCustomAction(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 427
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->volumeUp()V

    goto :goto_0

    .line 430
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->volumeDown()V

    goto :goto_0

    .line 424
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->changeMute()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 2

    .line 235
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isCurrentDataSourceEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SV-PlayerDMR"

    const-string v0, "setDataSource DataSource is empty."

    .line 237
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    if-nez p1, :cond_1

    const-string p1, "SV-PlayerDMR"

    const-string v0, "setDataSource DMR player wasn\'t prepared."

    .line 241
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz p1, :cond_2

    const/4 p1, 0x6

    .line 247
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mPlaybackState:I

    .line 248
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mPlaybackState:I

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onPlayerStateChanged(I)V

    .line 250
    :cond_2
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->bitOn(II)I

    move-result p1

    .line 251
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    const/4 p1, 0x0

    .line 253
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsTemporaryError:Z

    const/4 p1, 0x3

    .line 254
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    .line 256
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isPlayable(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 257
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto :goto_0

    :cond_3
    const/16 p1, -0x384

    const/16 v0, -0xbb9

    const/4 v1, 0x1

    .line 259
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->handleDmrError(IIZ)V

    :goto_0
    return-void
.end method

.method public setDmrId(Ljava/lang/String;)V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SV-PlayerDMR"

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDmrId id is the same so ignore this ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 408
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->createDmrPlayer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 409
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->handleDmrError(Z)V

    return-void

    .line 412
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrId:Ljava/lang/String;

    return-void
.end method

.method public setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 0

    return-void
.end method

.method public setOnPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 0

    return-void
.end method

.method public setPlayerSettingManager(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
    .locals 0

    return-void
.end method

.method public setSkipSilences(Z)V
    .locals 0

    return-void
.end method

.method public setSupposeToBePlayingPosition(J)V
    .locals 0

    .line 333
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    return-void
.end method

.method public setSupposedToBePlaying(Z)V
    .locals 0

    .line 328
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsSupposedToBePlaying:Z

    return-void
.end method

.method public start()V
    .locals 4

    const-string v0, "SMUSIC-SV-PlayerDMR"

    const-string v1, "start is called"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isRequestingDmrCommand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->bitOff(II)I

    move-result v0

    .line 133
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    return-void

    .line 137
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->getCurrentPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->createDmrPlayer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->handleDmrError(Z)V

    return-void

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isCurrentDataSourceEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SV-PlayerDMR"

    const-string v2, "start current DataSource is empty."

    .line 145
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->handleDmrError(Z)V

    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    return-void

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    .line 155
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mPlaybackState:I

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mPlaybackState:I

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onPlayerStateChanged(I)V

    .line 158
    :cond_4
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->bitOn(II)I

    move-result v0

    .line 159
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->resume()V

    :cond_5
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x2

    .line 190
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->stop()V

    .line 193
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    .line 195
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyPlayerStateChanged(Z)V

    const/4 v0, 0x1

    .line 196
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    return-void
.end method
