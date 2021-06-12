.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;
    }
.end annotation


# instance fields
.field private final audioAttributes:Landroid/media/AudioAttributes;

.field private final context:Landroid/content/Context;

.field private isCancel:Z

.field private isPrepared:Z

.field private final listener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;

.field private nextPlayer:Landroid/media/MediaPlayer;

.field private final playingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;Landroid/media/AudioAttributes;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playingItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->audioAttributes:Landroid/media/AudioAttributes;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->listener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;

    .line 26
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->nextPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static final synthetic access$getListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->listener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;

    return-object p0
.end method

.method public static final synthetic access$getNextPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;)Landroid/media/MediaPlayer;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->nextPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static final synthetic access$getPlayingItem$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    return-object p0
.end method

.method public static final synthetic access$isCancel$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->isCancel:Z

    return p0
.end method

.method public static final synthetic access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$release(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->release(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static final synthetic access$setCancel$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->isCancel:Z

    return-void
.end method

.method public static final synthetic access$setNextPlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->setNextPlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    return-void
.end method

.method public static final synthetic access$setNextPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->nextPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static synthetic execute$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->execute(Z)V

    return-void
.end method

.method private final printLog(Ljava/lang/String;)V
    .locals 5

    const-string v0, "NextMediaTask"

    const-string v1, "SMUSIC-SV"

    .line 117
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

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NextMediaTask >> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final release(Landroid/media/MediaPlayer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    return-void
.end method

.method private final setNextPlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 5

    .line 73
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->reset()V

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->isCancel:Z

    if-eqz v0, :cond_0

    const-string p1, "setNextPlayer is canceled"

    .line 75
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->printLog(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 79
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->nextPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    .line 80
    invoke-interface {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 83
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 86
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    .line 88
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 90
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->isCancel:Z

    if-eqz p1, :cond_2

    const-string p1, "setNextPlayer is canceled"

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->printLog(Ljava/lang/String;)V

    return-void

    .line 94
    :cond_2
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 108
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string p1, "setNextPlayer prepared"

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v4, "Thread.currentThread()"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/concurrent/TimeUnitExtensionKt;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms\t\tUi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 9

    const-string v0, "cancel called"

    .line 56
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->isCancel:Z

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->nextPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 60
    move-object v2, v1

    check-cast v2, Landroid/media/MediaPlayer;

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->nextPlayer:Landroid/media/MediaPlayer;

    .line 61
    sget-object v2, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    const/4 v5, 0x0

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$cancel$$inlined$apply$lambda$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$cancel$$inlined$apply$lambda$1;-><init>(Landroid/media/MediaPlayer;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final execute(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->setNextPlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    goto :goto_0

    .line 38
    :cond_0
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    const/4 v2, 0x0

    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method
