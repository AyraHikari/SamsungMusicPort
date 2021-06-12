.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->selectPosition(ILjava/lang/Integer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    b = "MusicPlayerQueue.kt"
    c = {}
    d = "invokeSuspend"
    e = "com.samsung.android.app.musiclibrary.core.service.v3.player.queue.MusicPlayerQueue$selectPosition$2"
.end annotation


# instance fields
.field final synthetic $direction:I

.field final synthetic $play:Z

.field final synthetic $pos:I

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;IIZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$pos:I

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$direction:I

    iput-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$play:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$pos:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$direction:I

    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$play:Z

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;IIZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    .line 556
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->label:I

    if-nez v0, :cond_5

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$PlayDirection;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$PlayDirection$Companion;

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$direction:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$PlayDirection$Companion;->toString$musicLibrary_release(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$play:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$pos:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$isExistItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getPlayList$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)[J

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$pos:I

    aget-wide v3, v1, v3

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getOptions$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$pos:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getPlayList$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)[J

    move-result-object v1

    array-length v7, v1

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$direction:I

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;-><init>(Landroid/content/Context;JLcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;III)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    goto :goto_0

    .line 561
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    .line 563
    :goto_0
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getCurrentPlayingItem$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->change(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    .line 565
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getPlayerSettingManager$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$pos:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->setQueuePosition(I)V

    .line 566
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 567
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->$play:Z

    if-eqz p1, :cond_3

    .line 568
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$selectPosition$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getCurrentPlayingItem$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->getPlayController()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->play()V

    .line 570
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 556
    :cond_4
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    .line 570
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
