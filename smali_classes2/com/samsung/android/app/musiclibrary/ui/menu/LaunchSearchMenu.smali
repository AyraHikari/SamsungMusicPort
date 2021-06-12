.class public final Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;-><init>(Landroid/support/v4/app/Fragment;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->e:I

    .line 30
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    .line 31
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->b:Landroid/content/Context;

    .line 34
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    goto :goto_0

    .line 35
    :cond_1
    instance-of p1, p2, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 33
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->a:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    .line 38
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->c:Ljava/lang/String;

    const-string p1, "0001"

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v4/app/Fragment;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;-><init>(Landroid/support/v4/app/Fragment;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 4

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->a:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v0, :cond_0

    .line 48
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->menu_launch_search:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->a:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->isLaunchSearchEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_ic_ab_search:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 56
    sget v2, Lcom/samsung/android/app/musiclibrary/R$color;->mu_icon_etc:I

    const/4 v3, 0x0

    .line 54
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 60
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->e:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "screenId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->menu_launch_search:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->a:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->a:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->launchSearch()V

    .line 69
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->d:Ljava/lang/String;

    return-void
.end method
