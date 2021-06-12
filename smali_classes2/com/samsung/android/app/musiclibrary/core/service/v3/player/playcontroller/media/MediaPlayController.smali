.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$Companion;

.field private static final FEATURE_SET_NEXT_PLAYER:Z = true

.field private static final HALF_MINUTE:J = 0x7530L


# instance fields
.field private final audioAttributes$delegate:Lkotlin/Lazy;

.field private bufferingPercent:I

.field private final context:Landroid/content/Context;

.field private isBuffering:Z

.field private isPrepared:Z

.field private isSupposedToBePlaying:Z

.field private nextItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

.field private nextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;

.field private nextPlayer:Landroid/media/MediaPlayer;

.field private final nextPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$nextPlayerListener$1;

.field private onPlaybackCompleteListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;

.field private onPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

.field private playbackState:I

.field private final playbackStateBuilder$delegate:Lkotlin/Lazy;

.field private player:Landroid/media/MediaPlayer;

.field private playerCloser:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;

.field private playingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

.field private seekPosition:J

.field private speed:F

.field private final tag:Ljava/lang/String;

.field private testNextResultListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playbackStateBuilder"

    const-string v4, "getPlaybackStateBuilder()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "audioAttributes"

    const-string v4, "getAudioAttributes()Landroid/media/AudioAttributes;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->tag:Ljava/lang/String;

    .line 35
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$playbackStateBuilder$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$playbackStateBuilder$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playbackStateBuilder$delegate:Lkotlin/Lazy;

    .line 36
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$audioAttributes$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$audioAttributes$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->audioAttributes$delegate:Lkotlin/Lazy;

    .line 55
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    .line 56
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->nextItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    const/16 p1, 0x64

    .line 61
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->bufferingPercent:I

    const-wide/16 p1, -0x1

    .line 64
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->seekPosition:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 65
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->speed:F

    .line 229
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$nextPlayerListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$nextPlayerListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->nextPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$nextPlayerListener$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 30
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getBufferingPercent$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->bufferingPercent:I

    return p0
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getNextPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->nextPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static final synthetic access$getOnPlaybackCompleteListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->onPlaybackCompleteListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;

    return-object p0
.end method

.method public static final synthetic access$getOnPlayerStateChangedListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->onPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    return-object p0
.end method

.method public static final synthetic access$getPlaybackStateBuilder$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->getPlaybackStateBuilder()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static final synthetic access$getSeekPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->seekPosition:J

    return-wide v0
.end method

.method public static final synthetic access$getTestNextResultListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->testNextResultListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;

    return-object p0
.end method

.method public static final synthetic access$getWakeLock$li(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static final synthetic access$getWakeLock$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p0, :cond_0

    const-string v0, "wakeLock"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$isBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isBuffering:Z

    return p0
.end method

.method public static final synthetic access$isOverO(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isOverO()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isPlayerReady()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isPrepared$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isPrepared:Z

    return p0
.end method

.method public static final synthetic access$isSupposedToBePlaying$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isSupposedToBePlaying:Z

    return p0
.end method

.method public static final synthetic access$notifyError(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyError()V

    return-void
.end method

.method public static final synthetic access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isBuffering:Z

    return-void
.end method

.method public static final synthetic access$setBufferingPercent$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->bufferingPercent:I

    return-void
.end method

.method public static final synthetic access$setNextPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->nextPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static final synthetic access$setOnPlaybackCompleteListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->onPlaybackCompleteListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;

    return-void
.end method

.method public static final synthetic access$setOnPlayerStateChangedListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->onPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    return-void
.end method

.method public static final synthetic access$setPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->player:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static final synthetic access$setPrepared$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isPrepared:Z

    return-void
.end method

.method public static final synthetic access$setSeekPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->seekPosition:J

    return-void
.end method

.method public static final synthetic access$setSupposedToBePlaying$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isSupposedToBePlaying:Z

    return-void
.end method

.method public static final synthetic access$setTestNextResultListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->testNextResultListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;

    return-void
.end method

.method public static final synthetic access$setWakeLock$li(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public static final synthetic access$setWakeLock$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private final closeNextPlayer()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->nextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->cancel()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->nextItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    .line 249
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->cancel()V

    .line 250
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->release()V

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->nextPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->ensureCloser()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->addWork(Landroid/media/MediaPlayer;Z)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 255
    :cond_1
    check-cast v1, Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->nextPlayer:Landroid/media/MediaPlayer;

    :cond_2
    return-void
.end method

.method private final closePlayer()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->ensureCloser()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->addWork(Landroid/media/MediaPlayer;Z)V

    const/4 v0, 0x0

    .line 242
    check-cast v0, Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->player:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method private final ensureCloser()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playerCloser:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->tag:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;-><init>(Ljava/lang/String;)V

    .line 261
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playerCloser:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;

    :goto_0
    return-object v0
.end method

.method private final getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->audioAttributes$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    return-object v0
.end method

.method private final getPlaybackStateBuilder()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playbackStateBuilder$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    return-object v0
.end method

.method private final isOverO()Z
    .locals 2

    .line 517
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

.method private final isPlayerReady()Z
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "player does not ready."

    .line 375
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    return v1

    .line 378
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isPrepared:Z

    if-nez v0, :cond_1

    const-string v0, "player does not prepared."

    .line 379
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final makeMediaPlayer(Landroid/content/Context;Landroid/media/AudioAttributes;)Landroid/media/MediaPlayer;
    .locals 5

    .line 578
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 296
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v3, 0x1

    .line 297
    invoke-virtual {v2, p1, v3}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x3

    .line 301
    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 305
    :goto_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)V

    .line 306
    move-object p2, p1

    check-cast p2, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 307
    move-object p2, p1

    check-cast p2, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 308
    move-object p2, p1

    check-cast p2, Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 309
    move-object p2, p1

    check-cast p2, Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 310
    move-object p2, p1

    check-cast p2, Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 311
    check-cast p1, Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 580
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long/2addr p1, v0

    const-string v0, "SMUSIC-SV"

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\t "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/concurrent/TimeUnitExtensionKt;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ms\t\tUi "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mediaPlayer create time"

    .line 295
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 581
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private final notifyError()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    .line 337
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyPlaybackState$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;ZIFILjava/lang/Object;)V

    return-void
.end method

.method private final notifyPlaybackState(ZIF)V
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPlaybackState new:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " old:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isSupposedToBePlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    .line 347
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isSupposedToBePlaying:Z

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playbackState:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->speed:F

    cmpg-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isSupposedToBePlaying:Z

    .line 349
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playbackState:I

    .line 350
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->speed:F

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->getPlaybackStateBuilder()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;->setSupposedToPlaying(Z)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    .line 353
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;->setPlayerState(I)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    .line 354
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;->setSpeed(F)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    .line 356
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->onPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->getPlaybackStateBuilder()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V

    :cond_1
    return-void
.end method

.method static synthetic notifyPlaybackState$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;ZIFILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 341
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isSupposedToBePlaying:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 342
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playbackState:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 343
    iget p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->speed:F

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyPlaybackState(ZIF)V

    return-void
.end method

.method private static synthetic playbackState$annotations()V
    .locals 0

    return-void
.end method

.method private final printLog(Ljava/lang/String;)V
    .locals 5

    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->tag:Ljava/lang/String;

    const-string v1, "SMUSIC-SV"

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayController >> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 588
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    .line 266
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyPlaybackState$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;ZIFILjava/lang/Object;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource mediaId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->getMediaId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isBuffering:Z

    const/4 v1, 0x0

    .line 269
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isPrepared:Z

    .line 270
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->bufferingPercent:I

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->makeMediaPlayer(Landroid/content/Context;Landroid/media/AudioAttributes;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->player:Landroid/media/MediaPlayer;

    .line 273
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 274
    :cond_0
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "content"

    .line 275
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    .line 277
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "try with file path because content uri is fail to playing"

    .line 279
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 281
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 286
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    const-string p1, "SecurityException"

    .line 574
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    .line 575
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$notifyError(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)V

    goto :goto_1

    :catch_2
    const-string p1, "IllegalStateException"

    .line 571
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    .line 572
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$notifyError(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)V

    goto :goto_1

    :catch_3
    const-string p1, "IllegalArgumentException"

    .line 568
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    .line 569
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$notifyError(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)V

    goto :goto_1

    :catch_4
    const-string p1, "IOException"

    .line 565
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    .line 566
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$notifyError(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)V

    :goto_1
    return-void
.end method

.method private final takeCatchSetDataSource(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 319
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SecurityException"

    .line 330
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    .line 331
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$notifyError(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)V

    goto :goto_0

    :catch_1
    const-string p1, "IllegalStateException"

    .line 327
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    .line 328
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$notifyError(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)V

    goto :goto_0

    :catch_2
    const-string p1, "IllegalArgumentException"

    .line 324
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    .line 325
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$notifyError(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)V

    goto :goto_0

    :catch_3
    const-string p1, "IOException"

    .line 321
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    .line 322
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$notifyError(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)V

    :goto_0
    return-void
.end method

.method private final takePlayer(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
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

    .line 361
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 363
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

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

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "player is in abnormal state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public buffering()I
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffering bufferingPercent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->bufferingPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    .line 160
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->bufferingPercent:I

    return v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->getPlaybackStateBuilder()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public next()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 7

    const-string v0, "pause"

    .line 120
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    .line 526
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 122
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 125
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "player is in abnormal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    .line 126
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyPlaybackState$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;ZIFILjava/lang/Object;)V

    return-void
.end method

.method public play()V
    .locals 8

    const-string v0, "play"

    .line 92
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isPrepared:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isSupposedToBePlaying:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playbackState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const-string v0, "play but already Preparing for playback"

    .line 94
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 100
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isPrepared:Z

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    .line 103
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyPlaybackState$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;ZIFILjava/lang/Object;)V

    if-eqz v0, :cond_2

    goto :goto_0

    .line 104
    :cond_2
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    const-string v1, "play but player is null"

    .line 105
    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 106
    iput-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isPrepared:Z

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    .line 109
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyPlaybackState$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;ZIFILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;

    if-eqz v0, :cond_4

    const-string v0, "play but playing item is empty"

    .line 111
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    return-void

    .line 114
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->closePlayer()V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    :goto_0
    return-void
.end method

.method public position()J
    .locals 4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position seek position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->seekPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    .line 151
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->seekPosition:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 152
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->seekPosition:J

    goto :goto_1

    .line 544
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 546
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 154
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

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

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "player is in abnormal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 544
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public prev(Z)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 9

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->ensureCloser()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->addWork(Landroid/media/MediaPlayer;Z)V

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    .line 75
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyPlaybackState$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;ZIFILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playerCloser:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->release()V

    .line 77
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_2

    const-string v1, "wakeLock"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    return-void
.end method

.method public seek(J)V
    .locals 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seek position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    const v0, 0x7fffffff

    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v0, p1

    .line 535
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 537
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 141
    :cond_1
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 142
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "player is in abnormal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    goto :goto_2

    .line 142
    :cond_3
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    const-string p2, "seekTo but player does not ready."

    .line 143
    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    int-to-long v0, v0

    .line 144
    iput-wide v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->seekPosition:J

    :goto_2
    return-void
.end method

.method public sendCustomAction(I)V
    .locals 2

    .line 184
    new-instance p1, Lkotlin/NotImplementedError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An operation is not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "not implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public sendCustomAction(ILandroid/os/Bundle;)V
    .locals 1

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An operation is not implemented: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "not implemented"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setNextPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNextPlayingItem mediaId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->getMediaId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->nextItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "setNextPlayingItem but already set same item"

    .line 213
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->closeNextPlayer()V

    .line 217
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->nextItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    .line 553
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 219
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 223
    :cond_2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->nextPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$nextPlayerListener$1;

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;Landroid/media/AudioAttributes;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->execute$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;ZILjava/lang/Object;)V

    .line 223
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->nextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;

    .line 226
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "player is in abnormal state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setOnPlaybackCompleteListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->onPlaybackCompleteListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;

    return-void
.end method

.method public setOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->onPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    return-void
.end method

.method public setPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayingItem mediaId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->getMediaId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playbackState:I

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->closePlayer()V

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    .line 197
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    .line 198
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyPlaybackState$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;ZIFILjava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isSupposedToBePlaying:Z

    if-eqz v0, :cond_2

    .line 201
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public speed(F)V
    .locals 7

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speed value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    .line 165
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->speed:F

    .line 167
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->speed:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyPlaybackState$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;ZIFILjava/lang/Object;)V

    return-void
.end method

.method public final testGetNextPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->nextItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    return-object v0
.end method

.method public final testGetPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    return-object v0
.end method

.method public final testIsPrepared()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 402
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isPrepared:Z

    return v0
.end method

.method public final testIsSupposedToBePlaying()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 387
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isSupposedToBePlaying:Z

    return v0
.end method

.method public final testSetIsSupposedToBePlaying(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 392
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isSupposedToBePlaying:Z

    return-void
.end method

.method public final testSetNextResultListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->testNextResultListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;

    return-void
.end method

.method public togglePlay()V
    .locals 1

    const-string v0, "togglePlay"

    .line 83
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->printLog(Ljava/lang/String;)V

    .line 84
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->isSupposedToBePlaying:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->pause()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->play()V

    :goto_0
    return-void
.end method
