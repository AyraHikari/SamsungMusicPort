.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->execute(Z)V
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
    b = "NextMediaTask.kt"
    c = {}
    d = "invokeSuspend"
    e = "com.samsung.android.app.musiclibrary.core.service.v3.player.playcontroller.media.NextMediaTask$execute$1"
.end annotation


# instance fields
.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    .line 38
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;->label:I

    if-nez v0, :cond_2

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 40
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->access$getPlayingItem$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->access$setNextPlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    .line 41
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->access$isCancel$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->access$getListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->access$getNextPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;->onResult(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during cancel. Ignore all case of exception. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Don\'t handle it. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$execute$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask;->cancel()V

    .line 51
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 38
    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
