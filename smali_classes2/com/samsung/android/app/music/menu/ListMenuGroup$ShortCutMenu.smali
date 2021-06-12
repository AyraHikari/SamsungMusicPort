.class public final Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;
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
    name = "ShortCutMenu"
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

    .line 818
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 3

    .line 844
    sget-object v0, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->a:Lcom/samsung/android/app/music/activity/AddToShortcutActivity$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity$Companion;->a(Landroid/app/Activity;I)V

    .line 845
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->g(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    return-void

    .line 844
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.ListInfoGetter"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final a(Landroid/view/Menu;I)V
    .locals 0

    .line 838
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 839
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 840
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isAndroidForWorkMode(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/util/UiUtils;->e(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

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

.method private final b()V
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutAddable;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutAddable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutAddable;->d()V

    .line 851
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->g(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1305e4

    .line 823
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;->a(Landroid/view/Menu;I)V

    const v0, 0x7f1305c1

    .line 824
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;->a(Landroid/view/Menu;I)V

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
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f1305c1

    if-eq p1, v0, :cond_1

    const v0, 0x7f1305e4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 830
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;->a()V

    goto :goto_0

    .line 831
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;->b()V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
