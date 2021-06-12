.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser$Companion;

.field private static final DEBUG:Z


# instance fields
.field private isRelease:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->tag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getDEBUG$cp()Z
    .locals 1

    .line 11
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->DEBUG:Z

    return v0
.end method

.method public static final synthetic access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;)Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$printDebugLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->printDebugLog(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private final close(Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 44
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser$close$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser$close$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final printDebugLog(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 66
    check-cast v0, Ljava/lang/String;

    const-string v0, "SMUSIC-SV"

    .line 69
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

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " PlayerCloser DEBUG "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final printLog(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 72
    check-cast v0, Ljava/lang/String;

    const-string v0, "SMUSIC-SV"

    .line 75
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

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " PlayerCloser >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final addWork(Landroid/media/MediaPlayer;Z)V
    .locals 7

    const-string p2, "player"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addWork player = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->printLog(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 20
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 21
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 22
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 23
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 33
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->isRelease:Z

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_1

    .line 61
    :cond_1
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser$addWork$$inlined$close$1;

    invoke-direct {v0, p0, p2, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser$addWork$$inlined$close$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;Landroid/media/MediaPlayer;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_1
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/PlayerCloser;->isRelease:Z

    return-void
.end method
