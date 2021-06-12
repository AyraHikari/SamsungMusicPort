.class Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/list/local/QueueFragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    .line 121
    check-cast p1, Lcom/samsung/android/app/music/list/local/QueueFragment;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    return-void
.end method

.method private a(Landroid/view/Menu;)V
    .locals 9

    const v0, 0x7f1305ae

    .line 148
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a()I

    move-result v0

    if-lez v0, :cond_8

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    .line 160
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    :goto_1
    if-ge v3, v2, :cond_7

    .line 165
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 166
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v7, "SMUSIC-QueueFunction"

    const-string v8, "updateDownloadItem but cursor is null !! "

    .line 168
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    if-ne v5, v4, :cond_4

    const-string v5, "cp_attrs"

    .line 173
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    :cond_4
    if-eq v5, v4, :cond_6

    .line 177
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const v8, 0x80002

    if-eq v7, v8, :cond_5

    const/4 v6, 0x0

    :cond_5
    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    move v1, v6

    .line 190
    :cond_8
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private b(Landroid/view/Menu;)V
    .locals 9

    const v0, 0x7f1305be

    .line 194
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->f()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a()I

    move-result v0

    if-lez v0, :cond_9

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    .line 206
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    .line 207
    :cond_3
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    :goto_1
    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    :goto_2
    if-ge v1, v3, :cond_8

    .line 211
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 212
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "SMUSIC-QueueFunction"

    const-string v8, "updateAddItem but cursor is null !! "

    .line 214
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    if-ne v5, v4, :cond_5

    const-string v5, "cp_attrs"

    .line 219
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    :cond_5
    if-eq v5, v4, :cond_7

    .line 223
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const v8, 0x80002

    if-ne v7, v8, :cond_6

    const/4 v6, 0x0

    :cond_6
    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    move v2, v6

    .line 236
    :cond_9
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private c(Landroid/view/Menu;)V
    .locals 3

    const v0, 0x7f1305be

    .line 240
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    return-void

    :cond_1
    const v1, 0x7f1305ae

    .line 247
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 248
    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 251
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x2

    .line 249
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    .line 141
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)V

    .line 142
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->a(Landroid/view/Menu;)V

    .line 143
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->b(Landroid/view/Menu;)V

    .line 144
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->c(Landroid/view/Menu;)V

    return-void
.end method

.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 126
    new-instance p1, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    const v1, 0x7f14000a

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p1, 0x7f13002c

    .line 128
    invoke-interface {p2, p1}, Landroid/view/Menu;->removeItem(I)V

    const p1, 0x7f1305be

    .line 129
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    .line 131
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    const p1, 0x7f1305bd

    .line 133
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    .line 135
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    return-void
.end method
