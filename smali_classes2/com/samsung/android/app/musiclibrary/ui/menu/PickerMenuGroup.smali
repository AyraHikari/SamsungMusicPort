.class public final Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

.field private final b:Landroid/support/v4/app/Fragment;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 3

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->b:Landroid/support/v4/app/Fragment;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->c:I

    .line 23
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->b:Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;-><init>(Landroid/support/v4/app/Fragment;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->b:Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_1

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->a(Ljava/lang/String;)V

    const-string p2, "6001"

    .line 25
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->b(Ljava/lang/String;)V

    .line 23
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->a:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    return-void

    .line 24
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.analytics.ScreenIdGetter"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Landroid/view/Menu;I)V
    .locals 0

    .line 79
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 81
    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-void

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->b:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->b:Landroid/support/v4/app/Fragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 110
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    .line 111
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final b(Landroid/view/Menu;I)V
    .locals 1

    .line 95
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 96
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->b:Landroid/support/v4/app/Fragment;

    .line 97
    instance-of p2, p2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 98
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->b:Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_1

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a()I

    move-result p2

    if-lez p2, :cond_0

    const/4 v0, 0x1

    .line 99
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 98
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.CheckableList"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->a:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;)V

    .line 35
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->menu_launch_search:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->a(Landroid/view/Menu;I)V

    .line 36
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->menu_single_item_picker_done:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->b(Landroid/view/Menu;I)V

    .line 37
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->menu_multiple_item_picker_done:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->b(Landroid/view/Menu;I)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->c:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->a:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 45
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 48
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->menu_multiple_item_picker_done:I

    const/4 v3, -0x1

    if-ne p1, v2, :cond_4

    .line 49
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "key_checked_ids"

    .line 52
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->b:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_3

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object v4

    .line 50
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 54
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 56
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 54
    invoke-virtual {v2, v3, p1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    if-nez v0, :cond_2

    .line 58
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return v1

    .line 52
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.CheckableList"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_4
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->menu_single_item_picker_done:I

    if-ne p1, v2, :cond_8

    const-string p1, "6002"

    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->a(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->b:Landroid/support/v4/app/Fragment;

    instance-of p1, p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-eqz p1, :cond_7

    .line 65
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->b:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_6

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->l()Landroid/content/Intent;

    move-result-object p1

    if-nez v0, :cond_5

    .line 66
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 68
    :cond_5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 66
    invoke-virtual {v0, v3, p1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 70
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 65
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.picker.single.Previewable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_0
    return v1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
