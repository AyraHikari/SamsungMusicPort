.class final Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BottomBarMenuItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem$Companion;

.field private static final d:Z

# The value of this static final field might be set in the static constructor
.field private static final e:Ljava/lang/String; = "This class is just wrapper for MenuItem. Should implement proper code if use this one."


# instance fields
.field private final b:Landroid/view/MenuItem;

.field private final c:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->a:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem$Companion;

    .line 475
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    const-string v0, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    .line 478
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/MenuItem;Landroid/view/View;)V
    .locals 1

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    const-string v1, "menuItem.actionProvider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const-string v1, "menuItem.actionView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "menuItem.icon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "menuItem.intent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    const-string v1, "menuItem.menuInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    const-string v1, "menuItem.subMenu"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "menuItem.title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "menuItem.titleCondensed"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    const-string v0, "actionProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 444
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 441
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 1

    .line 428
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 432
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 429
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 424
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 421
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 339
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 343
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 340
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    .line 351
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 355
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 352
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .line 363
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 367
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 364
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    const-string v1, "BottomBarMenuManager"

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnabled() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ebd70a4    # 0.37f

    .line 224
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x82

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v1, "it.animate().alpha(alpha\u2026    130\n                )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 230
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .line 295
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 299
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 296
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 291
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 288
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 311
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 308
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 327
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 331
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 328
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 470
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 467
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 1

    const-string v0, "menuItemClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 397
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 394
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1

    .line 319
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1, p2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 323
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 320
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setShowAsAction(I)V
    .locals 1

    .line 405
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void

    .line 406
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .line 412
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 416
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 413
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 263
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 267
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 259
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 256
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->d:Z

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 279
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v1, "BottomBarMenuManager"

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisible() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 236
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 239
    move-object p1, p0

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method
