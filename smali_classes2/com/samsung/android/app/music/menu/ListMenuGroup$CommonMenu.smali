.class public final Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;
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
    name = "CommonMenu"
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

    .line 185
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 3

    .line 245
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/music/activity/InternalPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/16 v2, 0x7be

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private final a(Landroid/view/Menu;I)V
    .locals 0

    .line 211
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 212
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

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

.method private final b()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->J()V

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "SELE"

    const-string v2, "More Option Select"

    .line 251
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 250
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.selectmode.ActionModeController"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final b(Landroid/view/Menu;I)V
    .locals 2

    .line 216
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 217
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 218
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->getLocalTracksCount()I

    move-result p2

    if-lez p2, :cond_0

    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    .line 220
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I

    move-result p2

    if-lez p2, :cond_0

    goto :goto_0

    :goto_1
    if-nez p2, :cond_2

    .line 222
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_4
    return-void
.end method

.method private final c()V
    .locals 7

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/help/ContactUsHelper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    sget-object v1, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a:Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;->a(Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;Landroid/app/Activity;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final c(Landroid/view/Menu;I)V
    .locals 0

    .line 226
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 227
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 228
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 230
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/help/ContactUsHelper;->a(Landroid/content/Context;)Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_1
    return-void
.end method

.method private final d()V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/samsung/android/app/music/help/HelpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final d(Landroid/view/Menu;I)V
    .locals 0

    .line 235
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 236
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    return-void
.end method

.method private final e(Landroid/view/Menu;I)V
    .locals 1

    .line 240
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f004a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1305c4

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a(Landroid/view/Menu;I)V

    const v0, 0x7f1305c2

    .line 191
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->b(Landroid/view/Menu;I)V

    const v1, 0x7f1305dd

    .line 192
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->c(Landroid/view/Menu;I)V

    const v1, 0x7f1305dc

    .line 193
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->d(Landroid/view/Menu;I)V

    .line 195
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->e(Landroid/view/Menu;I)V

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

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 203
    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->c()V

    goto :goto_0

    .line 204
    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->d()V

    goto :goto_0

    .line 201
    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->b()V

    goto :goto_0

    .line 202
    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;->a()V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1305c2 -> :sswitch_3
        0x7f1305c4 -> :sswitch_2
        0x7f1305dc -> :sswitch_1
        0x7f1305dd -> :sswitch_0
    .end sparse-switch
.end method
