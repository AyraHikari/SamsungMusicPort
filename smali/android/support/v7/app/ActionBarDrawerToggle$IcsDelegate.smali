.class Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IcsDelegate"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;

.field mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .line 536
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 541
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;->mActivity:Landroid/app/Activity;

    :goto_0
    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 531
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 1

    .line 548
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionBarDescription(I)V
    .locals 2

    .line 566
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;->mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb;->setActionBarDescription(Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;I)Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;->mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 555
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 557
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 558
    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;->mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2, p1, p2}, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb;->setActionBarUpIndicator(Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;->mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    const/4 p1, 0x0

    .line 560
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method
