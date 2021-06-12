.class final Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->doWhenAnimationDone(Lkotlin/jvm/functions/Function0;)V
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
    b = "RecommendAddItemAnimator.kt"
    c = {
        0x1c4
    }
    d = "invokeSuspend"
    e = "com.samsung.android.app.music.list.playlist.RecommendAddItemAnimator$doWhenAnimationDone$1"
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function0;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->$block:Lkotlin/jvm/functions/Function0;

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

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->$block:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;-><init>(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 445
    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 457
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 445
    :pswitch_0
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_1
    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 446
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    new-instance v1, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1$1;-><init>(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->access$setItemAnimatorFinishedListener$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)V

    const-wide/16 v3, 0x3e8

    .line 452
    iput v2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    .line 453
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->access$getItemAnimatorFinishedListener$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, "RecommendAddItemAnimator"

    const-string v0, "doWhenAnimationDone() invokes block by timeout (1000ms)"

    .line 454
    invoke-static {v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->$block:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 457
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 445
    :cond_3
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
