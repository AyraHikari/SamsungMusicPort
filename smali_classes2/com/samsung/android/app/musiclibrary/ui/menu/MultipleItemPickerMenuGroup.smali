.class public Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Landroid/app/Activity;

.field private final c:I

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

.field private final e:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->a:Landroid/support/v4/app/Fragment;

    .line 40
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->b:Landroid/app/Activity;

    .line 41
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->c:I

    .line 42
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "key_sound_picker"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->e:Z

    .line 44
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 45
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->a:Landroid/support/v4/app/Fragment;

    instance-of p1, p1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->a:Landroid/support/v4/app/Fragment;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .line 46
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 45
    :goto_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->a(Ljava/lang/String;)V

    .line 48
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->e:Z

    if-eqz p1, :cond_1

    const-string p1, "6071"

    goto :goto_1

    :cond_1
    const-string p1, "2602"

    :goto_1
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->b(Ljava/lang/String;)V

    .line 51
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    return-void
.end method

.method private a(Landroid/view/Menu;I)V
    .locals 3

    .line 93
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->b:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 100
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->e:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->action_bar_search_icon_winset:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->mu_icon_etc:I

    .line 102
    :goto_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_ic_ab_search:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    invoke-static {p2, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 105
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-void
.end method

.method private b(Landroid/view/Menu;I)V
    .locals 1

    .line 110
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->a:Landroid/support/v4/app/Fragment;

    instance-of p2, p2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 115
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->a:Landroid/support/v4/app/Fragment;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a()I

    move-result p2

    if-lez p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 117
    :cond_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;)V

    .line 62
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->menu_launch_search:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->a(Landroid/view/Menu;I)V

    .line 63
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->menu_multiple_item_picker_done:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->b(Landroid/view/Menu;I)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 56
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->c:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 72
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->menu_multiple_item_picker_done:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->a:Landroid/support/v4/app/Fragment;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->a:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->e:Z

    if-eqz v3, :cond_1

    const-string v3, "6072"

    goto :goto_0

    :cond_1
    const-string v3, "2603"

    :goto_0
    if-eqz p1, :cond_2

    .line 78
    array-length v2, p1

    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    .line 80
    invoke-virtual {v4, v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "key_checked_ids"

    .line 83
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 84
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->b:Landroid/app/Activity;

    const/4 v2, -0x1

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 84
    invoke-virtual {p1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return v1

    :cond_3
    return v2
.end method
