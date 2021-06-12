.class final Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->startTask(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;Z)V
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
    b = "ProgressDialogFragment.kt"
    c = {
        0x1f
    }
    d = "invokeSuspend"
    e = "com.samsung.android.app.music.list.playlist.ProgressDialogFragment$startTask$1"
.end annotation


# instance fields
.field final synthetic $task:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;

.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->$task:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->$task:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;

    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;-><init>(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 29
    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->L$0:Ljava/lang/Object;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_1
    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 30
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->$task:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;

    invoke-interface {p1}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;->doInBackground()Ljava/lang/Object;

    move-result-object p1

    .line 31
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->b()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->L$0:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->label:I

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    .line 39
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 29
    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
