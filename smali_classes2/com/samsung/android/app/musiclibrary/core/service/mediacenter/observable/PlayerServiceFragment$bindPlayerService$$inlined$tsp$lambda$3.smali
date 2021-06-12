.class final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->bindPlayerService()V
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
    b = "PlayerServiceFragment.kt"
    c = {}
    d = "invokeSuspend"
    e = "com.samsung.android.app.musiclibrary.core.service.mediacenter.observable.PlayerServiceFragment$bindPlayerService$2$1"
.end annotation


# instance fields
.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    .line 103
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->label:I

    if-nez v0, :cond_4

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 104
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$Companion;

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->access$isReadyToBind(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    .line 108
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context!!.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->access$getConnection$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connection$1;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 110
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->getServiceClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 107
    :cond_1
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->access$bindToService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->access$setServiceToken$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->access$getServiceToken$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->putToken(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->access$setStartToBind$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;Z)V

    .line 117
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 103
    :cond_3
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    .line 117
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
