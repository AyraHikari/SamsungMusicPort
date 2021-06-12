.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlaylistDetailMenu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1279
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;->c:I

    .line 1317
    new-instance p2, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v1, p1

    check-cast v1, Landroid/support/v4/app/Fragment;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    return-void
.end method

.method private final a()Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;
    .locals 6

    .line 1286
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;)V

    .line 1288
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 1289
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    .line 1291
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1292
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 1293
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1294
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v5, v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->b(I)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->a(Z)V

    .line 1296
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->b()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1297
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v5, v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->d(I)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->b(Z)V

    .line 1299
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->c()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1300
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v5, v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->c(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->c(Z)V

    .line 1303
    :cond_2
    sget-boolean v4, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v4, :cond_3

    .line 1304
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 1307
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 10

    .line 1326
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;)V

    .line 1328
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;->a()Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;

    move-result-object v0

    .line 1334
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 1335
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1337
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-interface {v4}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v4, v4, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    .line 1343
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->a()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->c()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x0

    goto :goto_4

    .line 1345
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->a()Z

    move-result v1

    .line 1346
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->a()Z

    move-result v4

    move v5, v4

    const/4 v4, 0x0

    .line 1350
    :goto_4
    instance-of v6, p1, Landroid/view/ContextMenu;

    const v7, 0x7f1305ad

    const v8, 0x7f1305ae

    const v9, 0x7f1305ab

    if-eqz v6, :cond_6

    .line 1351
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const-string v9, "menu.findItem(R.id.menu_play_bottom_bar)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1352
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v6, "menu.findItem(R.id.menu_download_bottom_bar)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1353
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v4, "menu.findItem(R.id.menu_bottom_bar_share)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_6
    if-nez p1, :cond_7

    .line 1355
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const-string v9, "menu!!.findItem(R.id.menu_play_bottom_bar)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1356
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v6, "menu.findItem(R.id.menu_download_bottom_bar)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1357
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v4, "menu.findItem(R.id.menu_bottom_bar_share)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1360
    :goto_5
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_9

    .line 1362
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->b()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->c()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    .line 1364
    :goto_6
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$onPrepareOptionsMenu$1;

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$onPrepareOptionsMenu$1;-><init>(Landroid/view/Menu;Z)V

    const/4 p1, 0x6

    .line 1371
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$onPrepareOptionsMenu$1;->invoke([I)V

    const/4 p1, 0x2

    .line 1381
    new-array p1, p1, [I

    fill-array-data p1, :array_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$onPrepareOptionsMenu$1;->invoke([I)V

    :cond_9
    return-void

    nop

    :array_0
    .array-data 4
        0x7f1305b1
        0x7f1305b3
        0x7f1305b4
        0x7f1305b5
        0x7f1305b2
        0x7f1305b6
    .end array-data

    :array_1
    .array-data 4
        0x7f1305b7
        0x7f1305b8
    .end array-data
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1321
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;->c:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1322
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
