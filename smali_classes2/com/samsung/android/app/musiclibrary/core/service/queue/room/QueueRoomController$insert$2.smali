.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->insert(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
    b = "QueueRoomController.kt"
    c = {
        0x254
    }
    d = "invokeSuspend"
    e = "com.samsung.android.app.musiclibrary.core.service.queue.room.QueueRoomController$insert$2"
.end annotation


# instance fields
.field final synthetic $body:Lkotlin/jvm/functions/Function1;

.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->$body:Lkotlin/jvm/functions/Function1;

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

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->$body:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 593
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 603
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 593
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

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

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 594
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setNeedRestore$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Z)V

    const-wide/16 v3, 0x3e8

    .line 596
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    return-object v0

    .line 597
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->$body:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 599
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getAvailableItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setAvailableItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V

    .line 600
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getQueueItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setQueueItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V

    .line 601
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getObserver$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;->getEMPTY_LIST()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$insert$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getAvailableItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;->onChanged(ILjava/util/List;Ljava/util/List;)V

    .line 603
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 593
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
