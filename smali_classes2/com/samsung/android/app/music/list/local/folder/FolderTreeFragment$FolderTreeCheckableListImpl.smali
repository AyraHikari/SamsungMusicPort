.class final Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FolderTreeCheckableListImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;",
            ")V"
        }
    .end annotation

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    .line 431
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    const/4 p1, 0x1

    .line 433
    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;->c:I

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/SparseBooleanArray;I)[J
    .locals 5

    const-string p2, "checkedItemPositions"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 439
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 440
    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->b(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 536
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 537
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 440
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 538
    :cond_1
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 540
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 541
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 441
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 542
    :cond_2
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 543
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 443
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->b(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 448
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->e(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 445
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    iget v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;->c:I

    invoke-static {v2, v0, p2, v1, v3}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;Ljava/lang/String;Ljava/util/ArrayList;II)V

    goto :goto_2

    .line 452
    :cond_4
    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)V
    .locals 0

    .line 433
    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;->c:I

    return-void
.end method
