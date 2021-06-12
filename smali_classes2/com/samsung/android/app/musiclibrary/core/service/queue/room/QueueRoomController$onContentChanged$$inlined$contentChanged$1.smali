.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->onContentChanged()V
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
        0x279
    }
    d = "invokeSuspend"
    e = "com.samsung.android.app.musiclibrary.core.service.queue.room.QueueRoomController$contentChanged$1"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

.field final synthetic this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

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

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-direct {v0, v1, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 632
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 640
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 632
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->L$0:Ljava/lang/Object;

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

    if-nez v1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    const-wide/16 v3, 0x3e8

    .line 633
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    return-object v0

    .line 709
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$1;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 710
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setNeedRestore$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Z)V

    .line 711
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    .line 718
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 719
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 720
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$10;

    invoke-direct {v5, v0, p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$10;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlinx/coroutines/CoroutineScope;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 721
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getMetaItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 808
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    .line 723
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getVirtualState()I

    move-result v6

    if-eq v6, v2, :cond_2

    .line 724
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getVirtualState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 725
    iget v6, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v6, v2

    iput v6, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 727
    :cond_3
    invoke-virtual {v5, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setVirtualState(I)V

    .line 728
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 732
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v9, 0x2

    if-eqz v4, :cond_6

    .line 733
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$1$3$virtualItems$1$3;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$1$3$virtualItems$1$3;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 739
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getBaseUri$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v4, v5, v3, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getExistItems(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Landroid/content/Context;Ljava/util/List;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v5

    .line 740
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 741
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$1$3$exist$1$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$1$3$exist$1$1;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 742
    iget p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_5

    .line 743
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->updateMetaItems(Ljava/util/List;)V

    .line 744
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getMetaItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setMetaItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V

    goto/16 :goto_3

    .line 752
    :cond_7
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$1$3$comparator$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$1$3$comparator$1;

    move-object v6, v0

    check-cast v6, Ljava/util/Comparator;

    .line 755
    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 756
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v3, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getSourceIds(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getMetaItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 757
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$11;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$11;-><init>(Ljava/util/List;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebugging(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 758
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .line 810
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    .line 760
    invoke-static {v5, v4, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v7

    if-ltz v7, :cond_8

    .line 762
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getAudioId()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAudioId(J)V

    .line 763
    invoke-virtual {v4, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setVirtualState(I)V

    .line 764
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v4, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setNeedRestore$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Z)V

    goto :goto_2

    .line 768
    :cond_9
    sget-object v10, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v11, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$12;

    move-object v3, v11

    move-object v4, v0

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$12;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;Lkotlinx/coroutines/CoroutineScope;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;)V

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-static {v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 769
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->updateMetaItems(Ljava/util/List;)V

    .line 771
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$13;

    invoke-direct {v3, p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$13;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 812
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getMetaItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setMetaItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V

    :goto_3
    if-eqz v2, :cond_a

    .line 635
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$isNeedRestore$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 636
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getQueueItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setQueueItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V

    .line 637
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getObserver$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getAvailableItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v9, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;->onChanged(ILjava/util/List;Ljava/util/List;)V

    .line 638
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setNeedRestore$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Z)V

    .line 640
    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 632
    :cond_b
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
