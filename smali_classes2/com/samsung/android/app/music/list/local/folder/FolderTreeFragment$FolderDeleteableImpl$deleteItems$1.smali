.class final Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->deleteItems()V
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
    b = "FolderTreeFragment.kt"
    c = {
        0x1fe
    }
    d = "invokeSuspend"
    e = "com.samsung.android.app.music.list.local.folder.FolderTreeFragment$FolderDeleteableImpl$deleteItems$1"
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

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

    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 477
    iget v3, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->label:I

    packed-switch v3, :pswitch_data_0

    .line 515
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :pswitch_0
    iget v2, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->I$0:I

    iget-object v2, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    instance-of v2, v0, Lkotlin/Result$Failure;

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    :pswitch_1
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_e

    iget-object v0, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 478
    iget-object v0, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    .line 480
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 482
    iget-object v4, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    iget-object v4, v4, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    const/4 v5, 0x0

    .line 483
    invoke-static {v5, v4}, Lkotlin/ranges/RangesKt;->b(II)Lkotlin/ranges/IntRange;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 536
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 537
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 483
    iget-object v10, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    iget-object v10, v10, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 538
    :cond_3
    check-cast v7, Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    .line 539
    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 540
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 541
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 484
    iget-object v9, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    iget-object v9, v9, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 542
    :cond_4
    check-cast v6, Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    .line 543
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 486
    iget-object v8, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    iget-object v8, v8, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v8, v7}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->b(I)I

    move-result v8

    packed-switch v8, :pswitch_data_1

    goto :goto_3

    .line 488
    :pswitch_2
    iget-object v8, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    iget-object v8, v8, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v8, v7}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->e(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->a(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 491
    :pswitch_3
    iget-object v8, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    iget-object v8, v8, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v8, v7}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :goto_3
    iget-object v8, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    invoke-static {v8}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;)I

    move-result v9

    iget-object v10, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    iget-object v10, v10, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v10, v7}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->f(I)I

    move-result v7

    add-int/2addr v9, v7

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;I)V

    goto :goto_2

    .line 496
    :cond_6
    iget-object v6, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    iget-object v6, v6, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;->b(I)V

    .line 498
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v7

    const/4 v9, 0x0

    if-eqz v8, :cond_c

    .line 499
    iget-object v8, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    iget-object v8, v8, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    if-nez v8, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    const-string v10, "activity!!"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v8, "activity!!.applicationContext"

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    sget-object v12, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->b:Landroid/net/Uri;

    const-string v8, "MediaContents.Folders.Trees.TRACKS_CONTENT_URI"

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "_id"

    .line 501
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v13

    .line 502
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "folder_bucket_id IN ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 545
    new-array v14, v10, [C

    .line 546
    array-length v10, v14

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v10, :cond_8

    .line 547
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    const/16 v16, 0x3f

    .line 502
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->a(C)Ljava/lang/Character;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Character;->charValue()C

    move-result v16

    aput-char v16, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3f

    const/16 v22, 0x0

    invoke-static/range {v14 .. v22}, Lkotlin/collections/ArraysKt;->a([CLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x29

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 551
    new-array v8, v5, [Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b

    move-object v15, v6

    check-cast v15, [Ljava/lang/String;

    const/16 v16, 0x0

    .line 499
    invoke-static/range {v11 .. v16}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 552
    move-object v8, v6

    check-cast v8, Ljava/io/Closeable;

    move-object v10, v9

    check-cast v10, Ljava/lang/Throwable;

    :try_start_0
    move-object v11, v8

    check-cast v11, Landroid/database/Cursor;

    if-nez v6, :cond_9

    goto :goto_5

    .line 563
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-nez v11, :cond_a

    goto :goto_5

    .line 506
    :cond_a
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->a(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_a

    .line 568
    :goto_5
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    invoke-static {v8, v10}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v10, v0

    :try_start_1
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    invoke-static {v8, v10}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 551
    :cond_b
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_c
    :goto_7
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->b()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;

    invoke-direct {v6, v1, v0, v9}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object v0, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->L$1:Ljava/lang/Object;

    iput v4, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->I$0:I

    iput v7, v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->label:I

    invoke-static {v5, v6, v1}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_d

    return-object v2

    .line 515
    :cond_d
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    .line 477
    :cond_e
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
