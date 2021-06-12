.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->enqueue(ILjava/util/List;ILjava/util/List;)V
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
        0x264
    }
    d = "invokeSuspend"
    e = "com.samsung.android.app.musiclibrary.core.service.queue.room.QueueRoomController$update$1"
.end annotation


# instance fields
.field final synthetic $action$inlined:I

.field final synthetic $addList$inlined:Ljava/util/List;

.field final synthetic $currentPos$inlined:I

.field final synthetic $retainPositions$inlined:Ljava/util/List;

.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

.field final synthetic this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;ILjava/util/List;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->$action$inlined:I

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->$addList$inlined:Ljava/util/List;

    iput p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->$currentPos$inlined:I

    iput-object p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->$retainPositions$inlined:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->$action$inlined:I

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->$addList$inlined:Ljava/util/List;

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->$currentPos$inlined:I

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->$retainPositions$inlined:Ljava/util/List;

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;ILjava/util/List;ILjava/util/List;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 610
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 624
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 610
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->L$0:Ljava/lang/Object;

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

    if-nez v1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    const-wide/16 v3, 0x3e8

    .line 612
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    return-object v0

    .line 613
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getAvailableItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Ljava/util/List;

    move-result-object v0

    .line 709
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1$lambda$1;

    invoke-direct {v3, p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1$lambda$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 714
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 715
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getMetaItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 716
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    .line 718
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getAddedIndex()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->$addList$inlined:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAddedIndex(I)V

    .line 717
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 723
    :cond_2
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1$lambda$2;

    invoke-direct {v4, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1$lambda$2;-><init>(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 725
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->$addList$inlined:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getIdOfPlaylist(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)J

    move-result-wide v3

    .line 726
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getBaseUri$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->$addList$inlined:Ljava/util/List;

    invoke-static {v5, v6, v7, v8, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getItemsFromCursor(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/List;

    move-result-object v5

    .line 727
    move-object v6, v5

    check-cast v6, Ljava/lang/Iterable;

    .line 729
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-gez v8, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_3
    check-cast v9, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    .line 730
    invoke-virtual {v9, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAddedIndex(I)V

    .line 731
    invoke-virtual {v9, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setPlaylistId(J)V

    move v8, v10

    goto :goto_2

    .line 734
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 735
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$1$addItems$1$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$1$addItems$1$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 738
    :cond_5
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 739
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$1$addItems$1$3;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$1$addItems$1$3;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 745
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->$action$inlined:I

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->$currentPos$inlined:I

    invoke-static {v3, v4, v1, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$ensureAddition(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;ILjava/util/List;Ljava/util/List;I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 747
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1$lambda$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1$lambda$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 750
    :cond_7
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1$lambda$4;

    invoke-direct {v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1$lambda$4;-><init>(Ljava/util/List;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 752
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->$retainPositions$inlined:Ljava/util/List;

    invoke-static {v3, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$ensureRetainItems(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;Ljava/util/List;)V

    .line 753
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 754
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$1$5;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$1$5;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 757
    :cond_8
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1$lambda$5;

    invoke-direct {v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1$lambda$5;-><init>(Ljava/util/List;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 758
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    .line 765
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->insertMeta(Ljava/util/List;)V

    .line 766
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setMetaItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V

    .line 800
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1$lambda$6;

    invoke-direct {v4, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1$lambda$6;-><init>(Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$Companion;Lkotlin/jvm/functions/Function0;)V

    :goto_4
    if-eqz v2, :cond_9

    .line 616
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getAvailableItems()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setAvailableItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V

    .line 617
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueRepository$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getQueueItems()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setQueueItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Ljava/util/List;)V

    .line 618
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getObserver$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;

    move-result-object p1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getAvailableItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;->onChanged(ILjava/util/List;Ljava/util/List;)V

    .line 619
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$isNeedRestore$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 620
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getObserver$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;

    move-result-object p1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getAvailableItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getQueueItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;->onChanged(ILjava/util/List;Ljava/util/List;)V

    .line 621
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$enqueue$$inlined$update$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {p1, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$setNeedRestore$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Z)V

    .line 624
    :cond_9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 610
    :cond_a
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
