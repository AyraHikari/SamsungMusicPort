.class public final Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/menu/ListMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlaylistMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/menu/ListMenuGroup;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 437
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/view/Menu;I)V
    .locals 0

    .line 462
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 463
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->e(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_1
    return-void
.end method

.method private final a(Ljava/lang/String;Z)V
    .locals 5

    .line 486
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "fragment.fragmentManager!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Playlist-EditPlaylist"

    .line 488
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 489
    sget-object v2, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->Companion:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p2}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;->newInstance(JZ)Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;

    move-result-object p1

    .line 490
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 491
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final b(Landroid/view/Menu;I)V
    .locals 1

    .line 467
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 468
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->e(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I

    move-result p2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_1
    return-void
.end method

.method private final b(Landroid/view/MenuItem;)V
    .locals 3

    .line 474
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 475
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->i(Lcom/samsung/android/app/music/menu/ListMenuGroup;)[J

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    aget-wide v1, p1, v0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 477
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    if-nez p1, :cond_2

    return-void

    .line 479
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->h()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 482
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a(Ljava/lang/String;Z)V

    return-void

    .line 479
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.ListInfoGetter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1305be

    .line 442
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a(Landroid/view/Menu;I)V

    const v0, 0x7f1305bf

    .line 443
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->b(Landroid/view/Menu;I)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1305bf

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x7f1305f0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 449
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->b(Landroid/view/MenuItem;)V

    goto :goto_1

    .line 452
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->i(Lcom/samsung/android/app/music/menu/ListMenuGroup;)[J

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    array-length p1, p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v2

    if-eqz p1, :cond_5

    .line 453
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->i(Lcom/samsung/android/app/music/menu/ListMenuGroup;)[J

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    aget-wide v0, p1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;->a(Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    return v2
.end method
