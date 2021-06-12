.class final Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundController;->onStartCalled()V
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
    b = "BeyondBackground.kt"
    c = {}
    d = "invokeSuspend"
    e = "com.samsung.android.app.music.background.BeyondBackgroundController$onStartCalled$1"
.end annotation


# instance fields
.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

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

    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    .line 783
    iget v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;->label:I

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 784
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    invoke-static {p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "reduce_animations"

    .line 786
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    invoke-static {v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->b(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Landroid/database/ContentObserver;

    move-result-object v2

    .line 785
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 788
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    invoke-static {v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->d(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundController;Z)V

    .line 790
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    invoke-static {p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->f(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1$2;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController$onStartCalled$1;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->post(Ljava/lang/Runnable;)Z

    .line 793
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 783
    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    .line 793
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
