.class public final Lcom/samsung/android/app/music/list/local/folder/HideFolderMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderMenu;->a:Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    if-nez p2, :cond_0

    .line 166
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const v0, 0x7f140022

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 10

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderMenu;->a:Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    if-nez p1, :cond_0

    .line 175
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x7f1305e3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_8

    .line 176
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v5, "recyclerView.adapter"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_6

    .line 183
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderMenu;->a:Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;

    invoke-virtual {v6, v5}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;->getItemId(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    .line 184
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderMenu;->a:Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;

    invoke-virtual {v6, v5}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 185
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderMenu;->a:Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;

    invoke-virtual {v7, v5}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;->g(I)Z

    move-result v7

    if-nez p1, :cond_2

    .line 186
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 280
    :cond_2
    invoke-virtual {p1, v5}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_4

    .line 186
    invoke-virtual {p1, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v7, :cond_5

    .line 187
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_5

    .line 189
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    :cond_6
    new-instance p1, Lcom/samsung/android/app/music/list/local/folder/HideItemTask;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderMenu;->a:Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    const-string v5, "fragment.activity!!"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p1, v0, v1, v4, v2}, Lcom/samsung/android/app/music/list/local/folder/HideItemTask;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 194
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v3, [Ljava/lang/Void;

    .line 193
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/list/local/folder/HideItemTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    return v2
.end method
