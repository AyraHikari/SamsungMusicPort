.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Empty"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;

.field private static playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final notifyEmptyState()V
    .locals 1

    .line 46
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;->playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;->notifyEmptyState(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V

    return-void
.end method

.method private final notifyEmptyState(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEmptyState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;->printLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V

    return-void
.end method

.method private final notifyToBePlayState()V
    .locals 1

    .line 47
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;->playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;->notifyToBePlayState(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V

    return-void
.end method

.method private final notifyToBePlayState(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V
    .locals 14

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyToBePlayState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;->printLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7f

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;-><init>(JIIJJZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;->setSupposedToPlaying(Z)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    .line 59
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    .line 57
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V

    return-void
.end method

.method private final printLog(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 67
    check-cast v0, Ljava/lang/String;

    const-string v0, "SMUSIC-SV"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EmptyPlayController "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public buffering()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public next()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;->notifyEmptyState()V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;->notifyEmptyState()V

    return-void
.end method

.method public play()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;->notifyToBePlayState()V

    return-void
.end method

.method public position()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public prev(Z)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;->notifyEmptyState()V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(J)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;->notifyEmptyState()V

    return-void
.end method

.method public sendCustomAction(I)V
    .locals 0

    return-void
.end method

.method public sendCustomAction(ILandroid/os/Bundle;)V
    .locals 0

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setNextPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setOnPlaybackCompleteListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;)V
    .locals 0

    return-void
.end method

.method public setOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V
    .locals 0

    .line 38
    sput-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;->playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    return-void
.end method

.method public setPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public speed(F)V
    .locals 0

    return-void
.end method

.method public togglePlay()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController$Empty;->notifyEmptyState()V

    return-void
.end method
