.class Lcom/samsung/android/app/music/list/local/LocalQueueFunction$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/LocalQueueFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/LocalQueueFunction;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/LocalQueueFunction;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/LocalQueueFunction;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction$ActionModeOptionsMenu;->c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-void
.end method

.method private a(Landroid/view/Menu;)V
    .locals 8

    const v0, 0x7f13002c

    .line 99
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction$ActionModeOptionsMenu;->c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction$ActionModeOptionsMenu;->c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 107
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x1

    :goto_0
    if-ge v1, v2, :cond_5

    .line 112
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 113
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction$ActionModeOptionsMenu;->c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v6

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "SMUSIC-QueueFunction"

    const-string v7, "updateShareItem but cursor is null !! "

    .line 115
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-ne v3, v4, :cond_2

    const-string v3, "cp_attrs"

    .line 119
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :cond_2
    if-ne v3, v4, :cond_3

    .line 122
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isLocalTrack()Z

    move-result v0

    move v1, v0

    goto :goto_3

    .line 125
    :cond_3
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 127
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->c(I)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    move v1, v5

    .line 137
    :cond_6
    :goto_3
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private b(Landroid/view/Menu;)V
    .locals 3

    const v0, 0x7f1305be

    .line 141
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    return-void

    :cond_1
    const v1, 0x7f13002c

    .line 148
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 152
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x2

    .line 150
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)V

    .line 94
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/LocalQueueFunction$ActionModeOptionsMenu;->a(Landroid/view/Menu;)V

    .line 95
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/LocalQueueFunction$ActionModeOptionsMenu;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 78
    new-instance p1, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction$ActionModeOptionsMenu;->c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const v1, 0x7f14000a

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p1, 0x7f1305ae

    .line 80
    invoke-interface {p2, p1}, Landroid/view/Menu;->removeItem(I)V

    const p1, 0x7f1305be

    .line 81
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    .line 83
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    const p1, 0x7f1305bd

    .line 85
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    .line 87
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    return-void
.end method
