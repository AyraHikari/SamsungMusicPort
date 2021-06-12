.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;,
        Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final BYTE_640K:J = 0xa0000L

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PLAY_SPEED:F = 1.0f

.field private static final FEATURE_ANDROID_SPEED_API:Z = false

.field private static final FEATURE_SET_NEXT_PLAYER:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final MEDIA_PLAYER_INTERFACE_NAME:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final MINIMUM_SCHEDULE_TIME_FOR_NEXT_MEDIA_BEFORE_PLAYING_COMPLETE:J = -0x2710L

.field private static final MINIMUM_TIME_FOR_NEXT_MEDIA_BEFORE_PLAYING_COMPLETE:J = 0x1388L

.field private static final START_TIME_FOR_NEXT_MEDIA_BEFORE_PLAYING_COMPLETE:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"

.field private static final UNDEFINED_DURATION:J = -0x1L

.field private static final UNDEFINED_PLAY_SPEED:F = -1.0f

.field private static final UNDEFINED_SEEK_POSITION:J = -0x1L

.field private static final WAKE_LOCK_WHEN_COMPLETE:J = 0x7530L


# instance fields
.field private activeCompleteController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

.field private final audioAttributes:Landroid/media/AudioAttributes;

.field private final audioSession$delegate:Lkotlin/Lazy;

.field private bufferingPercent:I

.field private closeWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

.field private final context:Landroid/content/Context;

.field private crossFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

.field private currentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field private final emptyDataSource$delegate:Lkotlin/Lazy;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private isBuffering:Z

.field private isOpenSession:Z

.field private isPrepared:Z

.field private isSupposedToBePlaying:Z

.field private final mediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

.field private nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

.field private nextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

.field private final nextPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

.field private onPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

.field private playSpeed:F

.field private playbackState:I

.field private player:Landroid/media/MediaPlayer;

.field private playerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private previousGenre:Ljava/lang/String;

.field private requestedSeekPosition:J

.field private skipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "emptyDataSource"

    const-string v4, "getEmptyDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "audioSession"

    const-string v4, "getAudioSession()Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    .line 1060
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->access$isSupportNext(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->FEATURE_SET_NEXT_PLAYER:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioAttributes;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->audioAttributes:Landroid/media/AudioAttributes;

    .line 71
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$emptyDataSource$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$emptyDataSource$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->emptyDataSource$delegate:Lkotlin/Lazy;

    .line 79
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$audioSession$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$audioSession$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->audioSession$delegate:Lkotlin/Lazy;

    const-wide/16 p1, -0x1

    .line 87
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->requestedSeekPosition:J

    const/high16 p1, -0x40800000    # -1.0f

    .line 88
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playSpeed:F

    .line 100
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    .line 116
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->E_:Z

    if-eqz p1, :cond_0

    .line 117
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string p2, "cross_fade"

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 119
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setCrossFade(I)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->ensureSkipSilence()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->skipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez p1, :cond_1

    const-string p2, "skipSilenceController"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->swapCompleteController(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;)V

    .line 295
    :cond_2
    :goto_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$nextPlayerListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$nextPlayerListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    return-void
.end method

.method public static final synthetic access$addToCloseWorker(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->addToCloseWorker(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static final synthetic access$adjustTimingOfSetNextMedia(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->adjustTimingOfSetNextMedia(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static final synthetic access$debugIOException(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->debugIOException(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    return-void
.end method

.method public static final synthetic access$getActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->activeCompleteController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez p0, :cond_0

    const-string v0, "activeCompleteController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getBufferingPercent$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->bufferingPercent:I

    return p0
.end method

.method public static final synthetic access$getCloseWorker$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->closeWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    if-nez p0, :cond_0

    const-string v0, "closeWorker"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getCrossFadeController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->crossFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez p0, :cond_0

    const-string v0, "crossFadeController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getCurrentSource$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->currentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-nez p0, :cond_0

    const-string v0, "currentSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getNextMediaPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    return-object p0
.end method

.method public static final synthetic access$getNextMediaTask$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    if-nez p0, :cond_0

    const-string v0, "nextMediaTask"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getOnPlayerStateChangedListener$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->onPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    return-object p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static final synthetic access$getRequestedSeekPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->requestedSeekPosition:J

    return-wide v0
.end method

.method public static final synthetic access$getSkipSilenceController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->skipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez p0, :cond_0

    const-string v0, "skipSilenceController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getWakeLock$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p0, :cond_0

    const-string v0, "wakeLock"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$handleExtraErrors(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;II)Z
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->handleExtraErrors(II)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isActiveCompleteControllerActivated(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isActiveCompleteControllerActivated()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isBuffering:Z

    return p0
.end method

.method public static final synthetic access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPlayerReady()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isPrepared$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPrepared:Z

    return p0
.end method

.method public static final synthetic access$isSupposedToBePlaying$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupposedToBePlaying:Z

    return p0
.end method

.method public static final synthetic access$notifyPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;ZI)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    return-void
.end method

.method public static final synthetic access$setActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->activeCompleteController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    return-void
.end method

.method public static final synthetic access$setBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isBuffering:Z

    return-void
.end method

.method public static final synthetic access$setBufferingPercent$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->bufferingPercent:I

    return-void
.end method

.method public static final synthetic access$setCloseWorker$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->closeWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    return-void
.end method

.method public static final synthetic access$setCrossFadeController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->crossFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    return-void
.end method

.method public static final synthetic access$setCurrentSource$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->currentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-void
.end method

.method public static final synthetic access$setNextMediaPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    return-void
.end method

.method public static final synthetic access$setNextMediaTask$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    return-void
.end method

.method public static final synthetic access$setOnPlayerStateChangedListener$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->onPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    return-void
.end method

.method public static final synthetic access$setPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->player:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static final synthetic access$setPrepared$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPrepared:Z

    return-void
.end method

.method public static final synthetic access$setRequestedSeekPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;J)V
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->requestedSeekPosition:J

    return-void
.end method

.method public static final synthetic access$setSkipSilenceController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->skipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    return-void
.end method

.method public static final synthetic access$setSupposedToBePlaying$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupposedToBePlaying:Z

    return-void
.end method

.method public static final synthetic access$setWakeLock$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public static final synthetic access$takeCompleteController(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->takeCompleteController(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$takePlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->takePlayer(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final addToCloseWorker(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->addToCloseWorker(Landroid/media/MediaPlayer;Z)V

    return-void
.end method

.method private final addToCloseWorker(Landroid/media/MediaPlayer;Z)V
    .locals 2

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->ensureCloseWorker()V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->closeWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    if-nez v0, :cond_0

    const-string v1, "closeWorker"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->addWork(Landroid/media/MediaPlayer;Z)V

    return-void
.end method

.method private final adjustTimingOfSetNextMedia(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 358
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playbackState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    .line 361
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    if-nez v0, :cond_2

    const-string v1, "nextMediaTask"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->hasMedia()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    .line 365
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3a98

    sub-long/2addr v0, v2

    .line 366
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    long-to-float p1, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getPlaySpeed()F

    move-result v0

    div-float/2addr p1, v0

    float-to-long v0, p1

    const-wide/16 v2, -0x2710

    cmp-long p1, v0, v2

    if-gez p1, :cond_4

    .line 368
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustTimingOfSetNextMedia "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " time but too short time, thus ignore it"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printInfoLog(Ljava/lang/String;)V

    return-void

    .line 374
    :cond_4
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustTimingOfSetNextMedia "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLifeCycleLog(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->obtainScheduleExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 376
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    if-nez v2, :cond_5

    const-string v3, "nextMediaTask"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    check-cast v2, Ljava/lang/Runnable;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v0, v1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->future:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v0, "adjustTimingOfSetNextMedia but task is empty"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printInfoLog(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :catch_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v0, "adjustTimingOfSetNextMedia but mp is in illegal state"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printInfoLog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method private final applyPauseToController()V
    .locals 3

    .line 1294
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isActiveCompleteControllerActivated(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 709
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private final applyPlayingStateToController()V
    .locals 4

    .line 1298
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isActiveCompleteControllerActivated(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1299
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    move-result-object v0

    .line 1300
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1302
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 716
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "current_position"

    .line 719
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 717
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "play_speed"

    .line 721
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getPlaySpeed()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/4 v1, 0x5

    .line 722
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 726
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1304
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media player is in abnormal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final cancelNextMediaPlayer()V
    .locals 2

    .line 348
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    if-nez v0, :cond_0

    const-string v1, "nextMediaTask"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->cancel()V

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->addToCloseWorker(Landroid/media/MediaPlayer;)V

    const/4 v0, 0x0

    .line 353
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    return-void
.end method

.method private final completeWithNextPlayer(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V
    .locals 7

    .line 966
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->onPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onCompletion(Z)V

    .line 1310
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isActiveCompleteControllerActivated(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1311
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    move-result-object v0

    .line 969
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "play_speed"

    .line 970
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getPlaySpeed()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v4, 0x8

    .line 971
    invoke-interface {v0, v4, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 974
    instance-of v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;

    if-eqz v3, :cond_1

    .line 975
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;

    move-result-object v3

    const-string v4, "CurrentMediaFadeController.getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->isCrossFadeActivated()Z

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 979
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->addToCloseWorker(Landroid/media/MediaPlayer;Z)V

    .line 981
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    .line 982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCompletion and playing gap less. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isActive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->isActive()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 981
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLifeCycleLog(Ljava/lang/String;)V

    .line 985
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getPlaySpeed()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setPlaySpeed(F)V

    .line 986
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->currentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-nez p1, :cond_3

    const-string v0, "currentSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    const-string v0, "currentSource.playingItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSeekPosition()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    .line 988
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->seekTo(J)J

    .line 991
    :cond_4
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->registerListeners(Landroid/media/MediaPlayer;)V

    .line 992
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getAudioSession()Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;

    move-result-object p1

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;->setCurrentAudioSessionId(I)V

    .line 993
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupposedToBePlaying:Z

    if-nez p1, :cond_5

    .line 998
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->pause()V

    .line 999
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    goto :goto_1

    .line 1001
    :cond_5
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    :goto_1
    return-void
.end method

.method private final debugIOException(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 7

    .line 223
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    const-string v1, "source.playingItem"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 224
    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    const-string v1, "source.playingItem"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object p2

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 227
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string p1, "_id"

    const-string v3, "title"

    const-string v4, "_data"

    .line 228
    filled-new-array {p1, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_id=?"

    const/4 p1, 0x1

    .line 234
    new-array v5, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v6, "id"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p2, v5, p1

    const/4 v6, 0x0

    .line 226
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1156
    move-object v1, p1

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v1

    check-cast v4, Landroid/database/Cursor;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1168
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "_data"

    .line 236
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "no item in provider"

    .line 238
    :goto_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debugIOException sourceId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " music provider\'s path: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " media provider\'s path: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printErrorLog(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 236
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    return-void
.end method

.method private final ensureCloseWorker()V
    .locals 3

    .line 128
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->closeWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    if-nez v0, :cond_2

    .line 129
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->closeWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    .line 130
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "Executors.newCachedThreadPool()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->executor:Ljava/util/concurrent/ExecutorService;

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const-string v1, "executor"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->closeWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    if-nez v1, :cond_1

    const-string v2, "closeWorker"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private final ensureSkipSilence()Z
    .locals 4

    .line 672
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->skipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupportSkipSilence(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->SUPPORT_FW_SKIP_SILENCE:Z

    if-eqz v0, :cond_1

    .line 677
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    goto :goto_0

    .line 679
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->context:Landroid/content/Context;

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    .line 676
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->skipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private final getAudioSession()Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->audioSession$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;

    return-object v0
.end method

.method private final getCurrentSongGenre()Ljava/lang/String;
    .locals 2

    .line 837
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    const-string v1, "dataSource.playingItem"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getGenre()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getCurrentSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 2

    .line 614
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->currentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->currentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-nez v0, :cond_1

    const-string v1, "currentSource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private final getEmptyDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->emptyDataSource$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-object v0
.end method

.method private final handleExtraErrors(II)Z
    .locals 2

    .line 803
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupposedToBePlaying:Z

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playbackState:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    .line 804
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->onPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onError(II)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final isActiveCompleteControllerActivated()Z
    .locals 1

    .line 731
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->activeCompleteController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isPlayerInitialized()Z
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isPlayerReady()Z
    .locals 3

    .line 448
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPlayerInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 449
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v2, "Player does not ready."

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    return v1

    .line 452
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPrepared:Z

    if-nez v0, :cond_1

    .line 453
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v2, "media player does not prepared."

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final isSupportSkipSilence(Landroid/content/Context;)Z
    .locals 1

    .line 688
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/app/musiclibrary/R$bool;->music_core_support_skip_silence:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method private final makeMediaPlayer(Landroid/content/Context;Landroid/media/AudioAttributes;)Landroid/media/MediaPlayer;
    .locals 2

    .line 253
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v1, 0x1

    .line 255
    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x3

    .line 257
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 261
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getAudioSession()Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;->setUpAudioSessionId(Landroid/media/MediaPlayer;)V

    return-object v0
.end method

.method private final notifyAudioEffect(ZZ)V
    .locals 3

    .line 812
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getCurrentSongGenre()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    .line 814
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isOpenSession:Z

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->previousGenre:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->previousGenre:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 818
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->previousGenre:Ljava/lang/String;

    .line 819
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isOpenSession:Z

    .line 823
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->context:Landroid/content/Context;

    .line 824
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isOpenSession:Z

    .line 825
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getAudioSession()Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;->getAudioSessionId()I

    move-result v2

    .line 822
    invoke-static {p2, v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->notifyAudioEffectWithSession(Landroid/content/Context;ZILjava/lang/String;)V

    .line 828
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAudioEffect() openSession ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private final notifyPlayerStateChanged(ZI)V
    .locals 2

    .line 278
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupposedToBePlaying:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playbackState:I

    if-ne v0, p2, :cond_0

    return-void

    .line 281
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupposedToBePlaying:Z

    .line 282
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playbackState:I

    .line 283
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->onPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playbackState:I

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onPlayerStateChanged(I)V

    .line 1170
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1172
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 284
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->adjustTimingOfSetNextMedia(Landroid/media/MediaPlayer;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1174
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media player is in abnormal state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic playbackState$annotations()V
    .locals 0

    return-void
.end method

.method private final registerListeners(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    check-cast v0, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    check-cast v0, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    check-cast v0, Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    check-cast v0, Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    check-cast v0, Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    check-cast v0, Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method private final releaseNextMediaPlayer()V
    .locals 2

    .line 1036
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v1, "releaseNextMediaPlayer"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 1038
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    return-void
.end method

.method private final reopenAudioEffect()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 832
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    .line 833
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    return-void
.end method

.method private final setCurrentSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 2

    .line 242
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->currentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->currentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-nez v0, :cond_0

    const-string v1, "currentSource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    if-ne v0, v1, :cond_2

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->currentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-nez v0, :cond_1

    const-string v1, "currentSource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->reset()V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->currentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-nez v0, :cond_3

    const-string v1, "currentSource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->cancel()V

    .line 249
    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->currentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-void
.end method

.method private final setGoogleApiPlaySpeed(Landroid/media/MediaPlayer;F)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 586
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method private final setLegacySamsungPlaySpeed(Landroid/media/MediaPlayer;F)V
    .locals 3

    .line 590
    return-void
.end method

.method private final setNextMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1025
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->FEATURE_SET_NEXT_PLAYER:Z

    if-nez v0, :cond_0

    .line 1026
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v0, "Next player feature is off. Ignore this request."

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    .line 1027
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->releaseNextMediaPlayer()V

    return-void

    .line 1318
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1320
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 1031
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 1032
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1322
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media player is in abnormal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 1032
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->releaseNextMediaPlayer()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    return-void
.end method

.method private final swapCompleteController(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;)V
    .locals 3

    .line 693
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->applyPauseToController()V

    .line 694
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->activeCompleteController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    .line 1285
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1287
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 696
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->activeCompleteController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez p1, :cond_1

    const-string v0, "activeCompleteController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 700
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1289
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media player is in abnormal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    .line 701
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 703
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->applyPlayingStateToController()V

    :cond_3
    return-void
.end method

.method private final takeCatch(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 198
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v1, "MP-setDataSourceAsync:SecurityException"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printErrorLog(Ljava/lang/String;)V

    .line 218
    invoke-static {p0, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$handleExtraErrors(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;II)Z

    goto :goto_0

    .line 211
    :catch_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v1, "MP-setDataSourceAsync:IllegalStateException"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printErrorLog(Ljava/lang/String;)V

    .line 212
    invoke-static {p0, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$handleExtraErrors(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;II)Z

    goto :goto_0

    .line 208
    :catch_2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v1, "MP-setDataSourceAsync:IllegalArgumentException"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printErrorLog(Ljava/lang/String;)V

    .line 209
    invoke-static {p0, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$handleExtraErrors(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;II)Z

    goto :goto_0

    .line 200
    :catch_3
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v1, "MP-setDataSourceAsync:IOException"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printErrorLog(Ljava/lang/String;)V

    .line 201
    invoke-static {p0, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$handleExtraErrors(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;II)Z

    .line 203
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getCurrentSource$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$debugIOException(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :catch_4
    :goto_0
    return-void
.end method

.method private final takeCompleteController(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 736
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isActiveCompleteControllerActivated(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final takePlayer(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/media/MediaPlayer;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 435
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 437
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 439
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media player is in abnormal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 785
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  isSupposedToBePlaying: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupposedToBePlaying:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 786
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  playbackState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playbackState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 787
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  buffering percent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->bufferingPercent:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 788
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  current position: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 789
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  session id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getAudioSessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public fade(FLcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V
    .locals 3

    .line 1267
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1269
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 636
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;

    move-result-object v1

    const-string v2, "c"

    .line 637
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->getTargetVolume()F

    move-result v2

    cmpg-float v2, v2, p1

    if-eqz v2, :cond_1

    .line 638
    invoke-virtual {v1, v0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->fade(Landroid/media/MediaPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;F)V

    .line 640
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1271
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media player is in abnormal state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAudioSessionId()I
    .locals 5

    .line 1249
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1251
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 531
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1253
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media player is in abnormal state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1249
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 531
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getAudioSession()Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;->getAudioSessionId()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getBufferingPercent()I
    .locals 1

    .line 527
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->bufferingPercent:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 7

    .line 519
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->requestedSeekPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 520
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->requestedSeekPosition:J

    goto :goto_1

    .line 1240
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1242
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 522
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1244
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "media player is in abnormal state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 1240
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_3
    :goto_1
    return-wide v2
.end method

.method public getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 1

    .line 288
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->currentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getCurrentSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    goto :goto_0

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getEmptyDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getDmrId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getDuration()J
    .locals 5

    .line 1231
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1233
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 512
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1235
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media player is in abnormal state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1231
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    .line 512
    :cond_2
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .line 513
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v1, "getDuration but Player does not ready."

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 1006
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPlayerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->player:Landroid/media/MediaPlayer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    return-object v0
.end method

.method public getPlaySpeed()F
    .locals 2

    .line 535
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupportPlaySpeed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playSpeed:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getPlaySpeed()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playSpeed:F

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playSpeed:F

    .line 538
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playSpeed:F

    goto :goto_1

    .line 540
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playSpeed:F

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    return v0
.end method

.method public getPlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object v0
.end method

.method public isBuffering()Z
    .locals 1

    .line 794
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isBuffering:Z

    return v0
.end method

.method public isGoingToOtherSong()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInitialized()Z
    .locals 2

    .line 764
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPlayerReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playbackState:I

    const/4 v1, 0x6

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

.method public isPlaying()Z
    .locals 1

    .line 776
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupposedToBePlaying:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 772
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPlayerReady()Z

    move-result v0

    return v0
.end method

.method public isPreparing()Z
    .locals 1

    .line 768
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isBuffering:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPrepared:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportPlaySpeed()Z
    .locals 2

    .line 609
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getCurrentSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    const-string v1, "currentSource.playingItem"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->isSupportPlaySpeed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 4

    .line 416
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLifeCycleLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 417
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    .line 1201
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1203
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 419
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 420
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v1, "pause but media player is already paused."

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    return-void

    .line 423
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->applyPauseToController()V

    .line 424
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 425
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    .line 426
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1205
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media player is in abnormal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public playingCompleted()V
    .locals 4

    .line 941
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v1, "playingCompleted"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLifeCycleLog(Ljava/lang/String;)V

    .line 942
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 943
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    .line 944
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-string v2, "pm.newWakeLock(PowerMana\u2026OCK, this.javaClass.name)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 945
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v2, "wakeLock"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    goto :goto_0

    .line 943
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_3

    const-string v2, "wakeLock"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 949
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    if-nez v0, :cond_6

    .line 950
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPrepared:Z

    .line 951
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isBuffering:Z

    .line 952
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->currentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-nez v0, :cond_4

    const-string v2, "currentSource"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->reset()V

    .line 953
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getEmptyDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->currentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 954
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->onPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onCompletion(Z)V

    .line 955
    :cond_5
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    goto :goto_1

    .line 957
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    const-string v1, "nextMediaPlayer!!.dataSource"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setCurrentSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 958
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->player:Landroid/media/MediaPlayer;

    .line 959
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    if-nez v1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    check-cast v1, Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    .line 960
    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    if-nez v0, :cond_9

    .line 961
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->completeWithNextPlayer(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V

    :goto_1
    return-void
.end method

.method public release()V
    .locals 3

    .line 1214
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isActiveCompleteControllerActivated(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 483
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->release()V

    .line 490
    :cond_2
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_4

    .line 491
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_3

    const-string v2, "wakeLock"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 493
    :cond_4
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->closeWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    if-eqz v0, :cond_6

    .line 494
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->closeWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    if-nez v0, :cond_5

    const-string v1, "closeWorker"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->release()V

    .line 496
    :cond_6
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->release()V

    return-void
.end method

.method public reset(Z)V
    .locals 2

    .line 467
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPlayerInitialized()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 468
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->player:Landroid/media/MediaPlayer;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->addToCloseWorker(Landroid/media/MediaPlayer;)V

    .line 469
    move-object p1, v0

    check-cast p1, Landroid/media/MediaPlayer;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->player:Landroid/media/MediaPlayer;

    .line 471
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    check-cast p1, Landroid/media/MediaPlayer;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->addToCloseWorker(Landroid/media/MediaPlayer;)V

    .line 472
    move-object p1, v0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    .line 1210
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isActiveCompleteControllerActivated(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1211
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    move-result-object p1

    const/16 v1, 0x9

    .line 474
    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public seekTo(J)J
    .locals 5

    .line 1218
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1220
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    long-to-int v2, p1

    .line 501
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1221
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isActiveCompleteControllerActivated(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    move-result-object v0

    .line 502
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->onSeekTo(J)V

    .line 503
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1226
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media player is in abnormal state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 1218
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_1

    .line 504
    :cond_3
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .line 505
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v1, "seekTo but Player does not ready."

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    .line 506
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->requestedSeekPosition:J

    :goto_1
    return-wide p1
.end method

.method public setCrossFade(I)V
    .locals 3

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 653
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->crossFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez v0, :cond_1

    .line 654
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->crossFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    .line 656
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isActiveCompleteControllerActivated()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->activeCompleteController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez v0, :cond_2

    const-string v1, "activeCompleteController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->crossFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez v1, :cond_3

    const-string v2, "crossFadeController"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    if-eq v0, v1, :cond_b

    .line 657
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->crossFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez v0, :cond_5

    const-string v1, "crossFadeController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->swapCompleteController(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;)V

    goto :goto_1

    .line 660
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isActiveCompleteControllerActivated()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->crossFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->activeCompleteController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez v0, :cond_7

    const-string v1, "activeCompleteController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->crossFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez v1, :cond_8

    const-string v2, "crossFadeController"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_8
    if-ne v0, v1, :cond_b

    .line 661
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->ensureSkipSilence()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 662
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->skipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez v0, :cond_a

    const-string v1, "skipSilenceController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->swapCompleteController(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;)V

    .line 666
    :cond_b
    :goto_1
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->crossFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-eqz v0, :cond_d

    .line 667
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->crossFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez v0, :cond_c

    const-string v1, "crossFadeController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_c
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->setValue(I)V

    :cond_d
    return-void
.end method

.method public setCurrentVolume(F)V
    .locals 3

    .line 1276
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1278
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 645
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;

    move-result-object v1

    .line 646
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->setCurrentVolume(Landroid/media/MediaPlayer;F)V

    .line 647
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1280
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media player is in abnormal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCustomAction(I)V
    .locals 0

    return-void
.end method

.method public setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 5

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupposedToBePlaying:Z

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPlayerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->player:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->addToCloseWorker(Landroid/media/MediaPlayer;)V

    const/4 v0, 0x0

    .line 148
    check-cast v0, Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->player:Landroid/media/MediaPlayer;

    .line 150
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    const-string v4, "source.playingItem"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLifeCycleLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isBuffering:Z

    const/4 v2, 0x0

    .line 152
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPrepared:Z

    .line 153
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playbackState:I

    .line 154
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->bufferingPercent:I

    .line 155
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setCurrentSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    const/4 v1, -0x1

    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->makeMediaPlayer(Landroid/content/Context;Landroid/media/AudioAttributes;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 158
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->player:Landroid/media/MediaPlayer;

    .line 160
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "content"

    const-string v4, "playingUri"

    .line 161
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    .line 163
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 165
    :catch_0
    :try_start_2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v3, "try with file path because content uri is fail to playing"

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printErrorLog(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 167
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    const-string v3, "source.playingItem"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 173
    :goto_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->timeSetDataSource:J

    .line 1130
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isActiveCompleteControllerActivated(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1131
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    move-result-object v0

    .line 177
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 178
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    const-string v4, "source.playingItem"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    const-string v4, "current_file_path"

    .line 179
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 183
    invoke-interface {v0, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 188
    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->registerListeners(Landroid/media/MediaPlayer;)V

    .line 189
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->reopenAudioEffect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1152
    :catch_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v0, "MP-setDataSourceAsync:SecurityException"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printErrorLog(Ljava/lang/String;)V

    .line 1153
    invoke-static {p0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$handleExtraErrors(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;II)Z

    goto :goto_1

    .line 1146
    :catch_2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v0, "MP-setDataSourceAsync:IllegalStateException"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printErrorLog(Ljava/lang/String;)V

    .line 1147
    invoke-static {p0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$handleExtraErrors(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;II)Z

    goto :goto_1

    .line 1143
    :catch_3
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v0, "MP-setDataSourceAsync:IllegalArgumentException"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printErrorLog(Ljava/lang/String;)V

    .line 1144
    invoke-static {p0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$handleExtraErrors(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;II)Z

    goto :goto_1

    .line 1135
    :catch_4
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v0, "MP-setDataSourceAsync:IOException"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printErrorLog(Ljava/lang/String;)V

    .line 1136
    invoke-static {p0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$handleExtraErrors(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;II)Z

    .line 1138
    :try_start_3
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getCurrentSource$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$debugIOException(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :catch_5
    :goto_1
    return-void
.end method

.method public setDmrId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setExistNextMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1043
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 13

    .line 313
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNextDataSource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLifeCycleLog(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->cancelNextMediaPlayer()V

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->nextSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 317
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->cancel()V

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->nextSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 1179
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1181
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 322
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->obtainScheduleExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 323
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$setNextDataSource$$inlined$takePlayer$lambda$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$setNextDataSource$$inlined$takePlayer$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    check-cast v3, Ljava/lang/Runnable;

    .line 325
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x0

    .line 323
    invoke-interface {v1, v3, v5, v6, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_3

    .line 327
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    .line 328
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getAudioSession()Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    .line 329
    iget-object v12, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->audioAttributes:Landroid/media/AudioAttributes;

    move-object v7, v3

    move-object v9, p1

    .line 327
    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;Landroid/media/AudioAttributes;)V

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->nextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    .line 331
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->adjustTimingOfSetNextMedia(Landroid/media/MediaPlayer;)V

    .line 333
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$setNextDataSource$$inlined$takePlayer$lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$setNextDataSource$$inlined$takePlayer$lambda$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 335
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 332
    invoke-interface {v1, v0, v5, v6, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 338
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1183
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media player is in abnormal state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    .line 1188
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isActiveCompleteControllerActivated(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1189
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    move-result-object p1

    const/4 v0, 0x2

    .line 340
    invoke-interface {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    :cond_5
    return-void
.end method

.method public setNextMediaPlayerInternal(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1014
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNextMediaPlayerInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLifeCycleLog(Ljava/lang/String;)V

    .line 1314
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isActiveCompleteControllerActivated(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1315
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    move-result-object v0

    .line 1016
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->setNextMediaplayer(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 1019
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 1021
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_2
    return-void
.end method

.method public setOnPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->onPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 4

    .line 552
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupportPlaySpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playSpeed:F

    cmpg-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 553
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playSpeed:F

    .line 554
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->onPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onSpeedChanged(F)V

    .line 1258
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1260
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 557
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->adjustTimingOfSetNextMedia(Landroid/media/MediaPlayer;)V

    .line 559
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupportPlaySpeed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 564
    :goto_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlaySpeed speed value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    .line 571
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setLegacySamsungPlaySpeed(Landroid/media/MediaPlayer;F)V

    .line 574
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 575
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->applyPlayingStateToController()V

    .line 577
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1262
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media player is in abnormal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setPlayerSettingManager(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
    .locals 2

    const-string v0, "playerSettingManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 753
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->skipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->skipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez v0, :cond_0

    const-string v1, "skipSilenceController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 755
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getSkipSilence()Z

    move-result p1

    .line 754
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->setValue(I)V

    :cond_1
    return-void
.end method

.method public setSkipSilences(Z)V
    .locals 3

    const-string v0, "SV-PlayerMedia"

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSkipSilences "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->skipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez v0, :cond_0

    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->skipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    if-nez v0, :cond_1

    const-string v1, "skipSilenceController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->setValue(I)V

    return-void
.end method

.method public setSupposeToBePlayingPosition(J)V
    .locals 0

    .line 393
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->requestedSeekPosition:J

    return-void
.end method

.method public setSupposedToBePlaying(Z)V
    .locals 1

    .line 389
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playbackState:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    return-void
.end method

.method public start()V
    .locals 6

    .line 397
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLifeCycleLog(Ljava/lang/String;)V

    .line 1192
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1194
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const/4 v3, 0x3

    .line 399
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    .line 400
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v3, "start but media player is already playing."

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 404
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    .line 408
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 409
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->applyPlayingStateToController()V

    .line 410
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1196
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "media player is in abnormal state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 410
    :cond_3
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .line 411
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playbackState:I

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    :goto_1
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x1

    .line 460
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->reset(Z)V

    const/4 v1, 0x0

    .line 461
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    .line 462
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    return-void
.end method
