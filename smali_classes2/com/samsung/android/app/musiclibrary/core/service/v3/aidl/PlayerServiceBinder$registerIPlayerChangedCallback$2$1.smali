.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$registerIPlayerChangedCallback$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->registerIPlayerChangedCallback()V
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
    b = "PlayerServiceBinder.kt"
    c = {
        0xee
    }
    d = "invokeSuspend"
    e = "com.samsung.android.app.musiclibrary.core.service.v3.aidl.PlayerServiceBinder$registerIPlayerChangedCallback$2$1"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$registerIPlayerChangedCallback$2$1;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$registerIPlayerChangedCallback$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$registerIPlayerChangedCallback$2$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$registerIPlayerChangedCallback$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$registerIPlayerChangedCallback$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$registerIPlayerChangedCallback$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 190
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$registerIPlayerChangedCallback$2$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 196
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$registerIPlayerChangedCallback$2$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_1
    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$registerIPlayerChangedCallback$2$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 191
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$getMutex$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    .line 238
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$registerIPlayerChangedCallback$2$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$registerIPlayerChangedCallback$2$1;->label:I

    invoke-interface {p1, v2, p0}, Lkotlinx/coroutines/sync/Mutex;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    return-object v0

    .line 192
    :cond_1
    :goto_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$getRegistered$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$getIPlayerService$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v0, v1

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$getPlayerChangedCallbacks$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_3

    goto :goto_2

    .line 193
    :cond_3
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$getIPlayerService$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$getIPlayerChangedCallback$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$iPlayerChangedCallback$1;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;->registerOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;)V

    .line 194
    :cond_4
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$setRegistered$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;Z)V

    .line 195
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-interface {p1, v2}, Lkotlinx/coroutines/sync/Mutex;->a(Ljava/lang/Object;)V

    .line 196
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception v0

    .line 242
    invoke-interface {p1, v2}, Lkotlinx/coroutines/sync/Mutex;->a(Ljava/lang/Object;)V

    throw v0

    .line 190
    :cond_5
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
