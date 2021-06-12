.class final Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = {}
    d = "invokeSuspend"
    e = "com.samsung.android.app.music.list.playlist.ProgressDialogFragment$startTask$1$1$1"
.end annotation


# instance fields
.field final synthetic $result:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;->$result:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;->$result:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;

    invoke-direct {v0, v1, p2, v2}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    .line 31
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;->label:I

    if-nez v0, :cond_2

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 32
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->access$getLoadingProgress$p(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;

    const/4 v0, 0x0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->access$setLoadingProgress$p(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;Landroid/app/ProgressDialog;)V

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;->$task:Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1$invokeSuspend$$inlined$let$lambda$1;->$result:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;->onPostExecute(Ljava/lang/Object;)V

    .line 37
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 31
    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
