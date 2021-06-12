.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "SourceFile"


# static fields
.field public static final ACTION_AVRCP:Ljava/lang/String; = "com.samsung.android.bt.AVRCP"

.field private static final DEBUG:Z = false

.field public static final EXTRA_REPEAT:Ljava/lang/String; = "repeat"

.field public static final EXTRA_SHUFFLE:Ljava/lang/String; = "shuffle"

.field private static final GEAR_DEVICE_NAME:Ljava/lang/String; = "SA_MUSIC_REMOTE_CONTROL"

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Player"

.field private static final SAFE_CANCEL_TIME:I = 0x61a8

.field private static final STOP_FF_REW_TASK:I = 0x0

.field private static final SUB_TAG:Ljava/lang/String; = "MediaSessionCallback: "

.field private static final TAG:Ljava/lang/String; = "SV-Player"


# instance fields
.field private final mCallback:Landroid/os/Handler$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mControlTaskHandler:Landroid/os/Handler;

.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

.field private mHeadsetHookClickHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;

.field private mLyricLoader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

.field private mMediaSession:Landroid/media/session/MediaSession;

.field private mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private final mOnLyricListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

.field private mPlayerLoggers:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionCommand:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;

.field private final mTnCPermissionRequester:Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;)V
    .locals 2
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    .line 88
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 272
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mOnLyricListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

    .line 487
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCallback:Landroid/os/Handler$Callback;

    .line 502
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 94
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mTnCPermissionRequester:Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;

    .line 95
    new-instance p3, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mSessionCommand:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->sendResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doCancelOnlyUpEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 373
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    const-string v0, "SA_MUSIC_REMOTE_CONTROL"

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private ensureClickHandler()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mHeadsetHookClickHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mHeadsetHookClickHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mHeadsetHookClickHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->setMultipleKeyClickListener(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;)V

    :cond_0
    return-void
.end method

.method private getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/logger/EmptyPlayerLogger;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/EmptyPlayerLogger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    :goto_0
    return-object v0
.end method

.method private getMatchedLogger(I)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mPlayerLoggers:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 506
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    return-object p1

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mPlayerLoggers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-nez p1, :cond_1

    .line 510
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p1
.end method

.method private handleMultiplePlayButton(ZZZI)V
    .locals 2

    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: listening multiple click"

    .line 468
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->ensureClickHandler()V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mHeadsetHookClickHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->getClickCount()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onPause()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onPlay()V

    .line 475
    invoke-direct {p0, p4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->getMatchedLogger(I)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    .line 476
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->c()V

    .line 479
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mHeadsetHookClickHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->increaseCount()V

    return-void
.end method

.method private isAcceptRepeatCountKeyCode(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x59

    if-ne p1, v0, :cond_0

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

.method private onMediaKeyDown(Landroid/content/Intent;)V
    .locals 12
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 378
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    .line 379
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->isAcceptRepeatCountKeyCode(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "SV-Player"

    const-string v0, "onMediaKeyDown key event is repeating, thus ignore it"

    .line 382
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    move-wide v3, v1

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v3

    .line 388
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x4f

    const/16 v7, 0x6c

    const/4 v8, 0x0

    if-eq v5, v6, :cond_2

    const-wide/16 v9, 0x61a8

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_0
    const-wide/16 v5, 0x2

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_7

    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onPause()V

    goto/16 :goto_4

    :pswitch_1
    const-wide/16 v5, 0x4

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_7

    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onPlay()V

    .line 392
    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->getMatchedLogger(I)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    .line 393
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->c()V

    goto/16 :goto_4

    :pswitch_2
    const-wide/16 v5, 0x40

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_7

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->startForward(I)V

    .line 426
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->doCancelOnlyUpEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 429
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    .line 430
    invoke-virtual {p1, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :pswitch_3
    const-wide/16 v5, 0x8

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_7

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->startRewind(I)V

    .line 438
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->doCancelOnlyUpEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 441
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    .line 442
    invoke-virtual {p1, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :pswitch_4
    const-wide/16 v5, 0x10

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_7

    .line 408
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onSkipToPrevious()V

    goto :goto_4

    :pswitch_5
    const-wide/16 v5, 0x20

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_7

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onSkipToNext()V

    goto :goto_4

    :pswitch_6
    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_7

    .line 413
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onStop()V

    goto :goto_4

    :cond_2
    :pswitch_7
    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 449
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v9, 0x3

    if-ne v0, v9, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-wide/16 v9, 0x204

    and-long/2addr v9, v3

    cmp-long v9, v9, v1

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    const-wide/16 v10, 0x202

    and-long/2addr v3, v10

    cmp-long v1, v3, v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 454
    :goto_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne p1, v6, :cond_6

    const/16 p1, 0x6b

    .line 455
    invoke-direct {p0, v0, v9, v5, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->handleMultiplePlayButton(ZZZI)V

    goto :goto_4

    .line 458
    :cond_6
    invoke-direct {p0, v0, v9, v5, v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->handleMultiplePlayButton(ZZZI)V

    :cond_7
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMediaSession:Landroid/media/session/MediaSession;

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.samsung.android.servicebox.mediasession.extra.MEDIA_ID"

    .line 289
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.samsung.android.servicebox.mediasession.extra.LYRIC"

    .line 290
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMediaSession:Landroid/media/session/MediaSession;

    const-string p2, "com.samsung.android.servicebox.mediasession.action.RESULT_LYRIC"

    invoke-virtual {p1, p2, v0}, Landroid/media/session/MediaSession;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onCommand(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "KEY_COMMAND"

    .line 357
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_ARGS"

    .line 358
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_RECEIVER"

    .line 359
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 360
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3

    const-string v0, "SV-Player"

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionCallback: onCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mSessionCommand:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "com.samsung.android.smartthings.action.CONTENT_CONTINUITY_GET_CURRENT_USER_ACTIVITY"

    .line 345
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mSessionCommand:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMediaSession:Landroid/media/session/MediaSession;

    .line 347
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 346
    invoke-virtual {p1, p2, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->sendGetUserActivityCommand(Landroid/media/MediaMetadata;Landroid/media/session/PlaybackState;Landroid/os/ResultReceiver;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.samsung.android.smartthings.action.CONTENT_CONTINUITY_TRANSFER_USER_ACTIVITY"

    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 349
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mSessionCommand:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->sendTransferUserActivityCommand(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    :cond_2
    :goto_0
    return-void

    .line 342
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mSessionCommand:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->addCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SV-Player"

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCustomAction action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.servicebox.mediasession.action.REQUEST_LYRIC"

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mLyricLoader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

    if-nez p1, :cond_0

    const-string p1, "SMUSIC-SV-Player"

    const-string p2, "ACTION_REQUEST_LYRIC but mLyricLoader is empty"

    .line 228
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "com.samsung.android.servicebox.mediasession.extra.MEDIA_ID"

    .line 231
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->convertAudioId(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 p1, -0x1

    cmp-long p1, v2, p1

    if-nez p1, :cond_1

    const-string p1, "SMUSIC-SV-Player"

    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_REQUEST_LYRIC but abnormal id"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 238
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-eqz v5, :cond_2

    .line 240
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide p1

    long-to-int v1, p1

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mLyricLoader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mOnLyricListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;->requestLyric(IJLcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p1, "SMUSIC-SV-Player"

    const-string p2, "ACTION_REQUEST_LYRIC but not exist metadata"

    .line 243
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->onCustomEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFastForward()V
    .locals 2

    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: onFastForward()"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->forward()V

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SV-Player"

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionCallback: onMediaButtonEvent() mediaButtonIntent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_3

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    .line 303
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 304
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    const-string v1, "SV-Player"

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaSessionCallback: onMediaButtonEvent() KeyEvent  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 307
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 315
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mTnCPermissionRequester:Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mTnCPermissionRequester:Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mTnCPermissionRequester:Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return v1

    .line 309
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mTnCPermissionRequester:Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mTnCPermissionRequester:Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mContext:Landroid/content/Context;

    .line 310
    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onMediaKeyDown(Landroid/content/Intent;)V

    :cond_2
    return v1

    .line 335
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: onPause()"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->pause()V

    return-void
.end method

.method public onPlay()V
    .locals 2

    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: onPlay()"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->play()V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "SMUSIC-SV-Player"

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionCallback: onPlayFromMediaId() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "SMUSIC-SV-Player"

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionCallback: onPlayFromSearch() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "SMUSIC-SV-Player"

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaSessionCallback: onPlayFromUri() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewind()V
    .locals 2

    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: onRewind()"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->rewind()V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 3

    const-string v0, "SV-Player"

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionCallback: onSeekTo() pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->seek(J)J

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-SV-Player"

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionCallback: onSeekTo() pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ignore this, our ff/rew task is working now"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSkipToNext()V
    .locals 2

    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: onSkipToNext()"

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->next()Z

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 2

    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: onSkipToPrevious()"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->prev(Z)Z

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 3

    const-string v0, "SMUSIC-SV-Player"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionCallback: onSkipToQueueItem() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    const/4 v1, 0x1

    .line 168
    invoke-interface {v0, p1, p2, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->openQueueId(JIZ)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: onStop()"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stop()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mLyricLoader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mLyricLoader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;->release()V

    :cond_0
    return-void
.end method

.method public setLyricLoader(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mLyricLoader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

    return-void
.end method

.method public setMediaSession(Landroid/media/session/MediaSession;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMediaSession:Landroid/media/session/MediaSession;

    return-void
.end method

.method setMusicMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4

    .line 251
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 252
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mSessionCommand:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->isInit()Z

    move-result p1

    if-nez p1, :cond_1

    .line 253
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mSessionCommand:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->setInit(Z)V

    .line 254
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mSessionCommand:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->getPendingCommands()Ljava/util/List;

    move-result-object p1

    .line 255
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand$CommandInfo;

    .line 256
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand$CommandInfo;->command:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand$CommandInfo;->args:Landroid/os/Bundle;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand$CommandInfo;->cb:Landroid/os/ResultReceiver;

    invoke-virtual {p0, v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mSessionCommand:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;->setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public setPlayerLoggers(Landroid/util/SparseArray;)V
    .locals 0
    .param p1    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;)V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mPlayerLoggers:Landroid/util/SparseArray;

    return-void
.end method
