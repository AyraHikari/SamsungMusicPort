.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->setInitList(Ljava/util/List;Ljava/util/List;)V
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
.field final synthetic $addedOrders$inlined:Ljava/util/List;

.field final synthetic $list$inlined:Ljava/util/List;

.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

.field final synthetic this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->$list$inlined:Ljava/util/List;

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->$addedOrders$inlined:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->$list$inlined:Ljava/util/List;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->$addedOrders$inlined:Ljava/util/List;

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;Ljava/util/List;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 593
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 603
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 593
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->L$0:Ljava/lang/Object;

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

    if-nez v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 594
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setNeedRestore$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Z)V

    const-wide/16 v4, 0x3e8

    .line 596
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    return-object v0

    .line 709
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    .line 716
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1$lambda$5;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1$lambda$5;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 717
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->$list$inlined:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 764
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_2
    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    .line 720
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setId(I)V

    .line 722
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->$addedOrders$inlined:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->$addedOrders$inlined:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAddedIndex(I)V

    move v2, v4

    goto :goto_1

    .line 725
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->$list$inlined:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->insertMeta(Ljava/util/List;)V

    .line 726
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->$list$inlined:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setMetaItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V

    .line 727
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1$lambda$6;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1$lambda$6;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 599
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getAvailableItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setAvailableItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V

    .line 600
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getQueueItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setQueueItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V

    .line 601
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getObserver$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;->getEMPTY_LIST()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$setInitList$$inlined$insert$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getAvailableItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;->onChanged(ILjava/util/List;Ljava/util/List;)V

    .line 603
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 593
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
