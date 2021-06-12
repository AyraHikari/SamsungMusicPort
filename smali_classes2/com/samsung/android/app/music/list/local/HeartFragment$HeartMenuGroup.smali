.class final Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeartMenuGroup"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment;

.field private final b:Lcom/samsung/android/app/music/menu/ListMenuGroup;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 572
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZ)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;->b:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 572
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;IZ)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 9

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;->b:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a(Landroid/view/Menu;)V

    const v0, 0x7f1305e4

    .line 583
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 584
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v3

    .line 586
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isAndroidForWorkMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 587
    invoke-static {v3}, Lcom/samsung/android/app/music/util/UiUtils;->e(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getItemCount()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f1305af

    .line 590
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 592
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a()I

    move-result v3

    if-lez v3, :cond_4

    .line 593
    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;

    const-wide/16 v3, -0xb

    .line 594
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 595
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 1754
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    .line 1755
    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 596
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v8, v7}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    .line 605
    :cond_4
    :goto_2
    instance-of p1, p1, Landroid/view/ContextMenu;

    if-eqz p1, :cond_5

    .line 606
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 608
    :cond_5
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_6
    :goto_3
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;->b:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;->b:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
