.class final Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShuffleAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lkotlin/Unit;)V
    .locals 9

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    .line 409
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

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 409
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v6, v5}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getItemId(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 538
    :cond_2
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 539
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 410
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->b(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 417
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->e(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 412
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    .line 413
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v5, v2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 412
    :cond_3
    invoke-static {v3, v2, p1, v1, v4}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;Ljava/lang/String;Ljava/util/ArrayList;II)V

    goto :goto_2

    .line 422
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 423
    check-cast p1, Ljava/lang/Iterable;

    .line 542
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_5
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 424
    aput-wide v4, v2, v1

    move v1, v3

    goto :goto_3

    .line 426
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->g()I

    move-result v3

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->h()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/Object;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 405
    check-cast p1, [Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;->a([Lkotlin/Unit;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
