.class public final Lcom/samsung/android/app/music/menu/MyMusicModeOffMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/menu/AddableMenu;
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/MyMusicModeOffMenu;->a:Landroid/support/v4/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 2

    .line 27
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez p1, :cond_0

    .line 28
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const v1, 0x7f13002a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 29
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 33
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f13002a

    const/4 v1, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 35
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/MyMusicModeOffMenu;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/settings/MilkSettings;->a(Landroid/support/v4/app/FragmentActivity;Z)V

    const/4 v1, 0x1

    :cond_2
    :goto_1
    return v1
.end method

.method public b(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    if-nez p1, :cond_0

    .line 15
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const p2, 0x7f13002a

    const v0, 0x7f0b029a

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 17
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 18
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/MyMusicModeOffMenu;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0202bd

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/MyMusicModeOffMenu;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0041

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 18
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-void
.end method
