.class public Landroid/support/design/internal/BottomNavigationMenuView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ACTIVE_ANIMATION_DURATION_MS:J


# instance fields
.field private mActiveItemMaxWidth:I

.field private mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHasIcon:Z

.field private final mInactiveItemMaxWidth:I

.field private final mInactiveItemMinWidth:I

.field private mItemBackgroundRes:I

.field private mItemHeight:I

.field private mItemIconTint:Landroid/content/res/ColorStateList;

.field private final mItemPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Landroid/support/design/internal/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTextColor:Landroid/content/res/ColorStateList;

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

.field private mSBBTextColorDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mSelectedItemId:I

.field private mSelectedItemPosition:I

.field private final mSet:Landroid/support/transition/TransitionSet;

.field private mShiftingMode:Z

.field private mTempChildWidths:[I

.field private mWidthPercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance p2, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object p2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemPool:Landroid/support/v4/util/Pools$Pool;

    const/4 p2, 0x0

    .line 62
    iput-boolean p2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    .line 65
    iput p2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemId:I

    .line 66
    iput p2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    .line 93
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 94
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/design/R$dimen;->sesl_bottom_bar_width_proportion:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 95
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mWidthPercent:F

    .line 98
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 99
    sget v2, Landroid/support/design/R$dimen;->sesl_bottom_navigation_item_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMaxWidth:I

    .line 101
    sget v2, Landroid/support/design/R$dimen;->sesl_bottom_navigation_item_min_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMinWidth:I

    .line 103
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mWidthPercent:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    .line 104
    sget v2, Landroid/support/design/R$dimen;->sesl_bottom_navigation_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemHeight:I

    .line 106
    new-instance v1, Landroid/support/transition/AutoTransition;

    invoke-direct {v1}, Landroid/support/transition/AutoTransition;-><init>()V

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSet:Landroid/support/transition/TransitionSet;

    .line 107
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {v1, p2}, Landroid/support/transition/TransitionSet;->setOrdering(I)Landroid/support/transition/TransitionSet;

    .line 108
    iget-object p2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSet:Landroid/support/transition/TransitionSet;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    .line 109
    iget-object p2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSet:Landroid/support/transition/TransitionSet;

    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p2, v1}, Landroid/support/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSet;

    .line 110
    iget-object p2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSet:Landroid/support/transition/TransitionSet;

    new-instance v1, Landroid/support/design/internal/TextScale;

    invoke-direct {v1}, Landroid/support/design/internal/TextScale;-><init>()V

    invoke-virtual {p2, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 112
    new-instance p2, Landroid/support/design/internal/BottomNavigationMenuView$1;

    invoke-direct {p2, p0}, Landroid/support/design/internal/BottomNavigationMenuView$1;-><init>(Landroid/support/design/internal/BottomNavigationMenuView;)V

    iput-object p2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 122
    new-array p2, v0, [I

    iput-object p2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/design/internal/BottomNavigationPresenter;
    .locals 0

    .line 51
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 0

    .line 51
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method

.method private getNewItem()Landroid/support/design/internal/BottomNavigationItemView;
    .locals 2

    .line 429
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Landroid/support/design/internal/BottomNavigationItemView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method private getNewItem(Z)Landroid/support/design/internal/BottomNavigationItemView;
    .locals 2

    .line 419
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/BottomNavigationItemView;

    .line 420
    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mHasIcon:Z

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Landroid/support/design/internal/BottomNavigationItemView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Z)V

    :cond_0
    return-object v0
.end method

.method private isLightTheme()Z
    .locals 4

    .line 458
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 459
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 460
    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private seslIsShowButtonEnabled()Z
    .locals 3

    .line 454
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "show_button_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public buildMenuView()V
    .locals 7

    .line 312
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->removeAllViews()V

    .line 313
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 315
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v5, v4}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemId:I

    .line 320
    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/design/internal/BottomNavigationItemView;

    iput-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    .line 325
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-le v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getShiftMode()Z

    move-result v2

    and-int/2addr v0, v2

    iput-boolean v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    const/4 v0, 0x0

    .line 326
    :goto_2
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 327
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v2, v3}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 328
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 329
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v2, v1}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 330
    invoke-direct {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getNewItem()Landroid/support/design/internal/BottomNavigationItemView;

    .line 333
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    .line 334
    invoke-direct {p0, v1}, Landroid/support/design/internal/BottomNavigationMenuView;->getNewItem(Z)Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v2

    goto :goto_3

    .line 336
    :cond_3
    invoke-direct {p0, v3}, Landroid/support/design/internal/BottomNavigationMenuView;->getNewItem(Z)Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v2

    .line 340
    :goto_3
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    aput-object v2, v4, v0

    .line 341
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 342
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 343
    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemBackgroundRes:I

    invoke-virtual {v2, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    .line 344
    iget-boolean v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    invoke-virtual {v2, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setShiftingMode(Z)V

    .line 345
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v2, v4, v1}, Landroid/support/design/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 346
    invoke-virtual {v2, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setItemPosition(I)V

    .line 347
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    invoke-virtual {p0, v2}, Landroid/support/design/internal/BottomNavigationMenuView;->addView(Landroid/view/View;)V

    .line 351
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 352
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-le v5, v6, :cond_6

    .line 354
    invoke-direct {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->seslIsShowButtonEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 355
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSBBTextColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_4

    .line 356
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSBBTextColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v5

    goto :goto_4

    .line 358
    :cond_4
    invoke-direct {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->isLightTheme()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 359
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/design/R$color;->sesl_bottom_navigation_background_light:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_4

    .line 361
    :cond_5
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/design/R$color;->sesl_bottom_navigation_background_dark:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 364
    :goto_4
    invoke-virtual {v2, v5, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setShowButtonShape(ILandroid/content/res/ColorStateList;)V

    goto :goto_5

    .line 367
    :cond_6
    invoke-direct {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->seslIsShowButtonEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 368
    invoke-virtual {v2, v1, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setShowButtonShape(ILandroid/content/res/ColorStateList;)V

    :cond_7
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 373
    :cond_8
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    .line 374
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public getBackgroundColorDrawable()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .line 294
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSBBTextColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 248
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1

    .line 304
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemBackgroundRes:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 270
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 437
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemId:I

    return v0
.end method

.method public getShiftMode()Z
    .locals 1

    .line 413
    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0

    .line 131
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 197
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 198
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mWidthPercent:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 203
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 207
    iget-boolean p2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mHasIcon:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/design/R$dimen;->sesl_bottom_navigation_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    .line 210
    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    goto :goto_3

    .line 214
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    sub-int v3, p4, v1

    .line 215
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    sub-int/2addr v4, p2

    sub-int/2addr v3, p2

    invoke-virtual {v2, v4, p3, v3, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_2
    add-int v3, v1, p2

    .line 217
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    sub-int/2addr v4, p2

    invoke-virtual {v2, v3, p3, v4, p5}, Landroid/view/View;->layout(IIII)V

    .line 219
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 139
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mWidthPercent:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 140
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result p2

    .line 142
    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mHasIcon:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemHeight:I

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_bottom_navigation_height_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemHeight:I

    .line 148
    :goto_0
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 150
    iget-boolean v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    add-int/lit8 v2, p2, -0x1

    .line 152
    iget v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMinWidth:I

    mul-int v5, v5, v2

    sub-int v5, p1, v5

    .line 153
    iget v6, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr p1, v5

    .line 154
    div-int v6, p1, v2

    .line 155
    iget v7, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int v2, v2, v6

    sub-int/2addr p1, v2

    move v2, p1

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p2, :cond_7

    .line 158
    iget-object v7, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    iget v8, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    if-ne p1, v8, :cond_1

    move v8, v5

    goto :goto_2

    :cond_1
    move v8, v6

    :goto_2
    aput v8, v7, p1

    if-lez v2, :cond_2

    .line 160
    iget-object v7, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    aget v8, v7, p1

    add-int/2addr v8, v4

    aput v8, v7, p1

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    move v2, p2

    .line 165
    :goto_3
    div-int v2, p1, v2

    const/4 v5, 0x2

    if-eq p2, v5, :cond_5

    .line 166
    iget v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_5
    mul-int v5, v2, p2

    sub-int/2addr p1, v5

    move v5, p1

    const/4 p1, 0x0

    :goto_4
    if-ge p1, p2, :cond_7

    .line 169
    iget-object v6, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    aput v2, v6, p1

    if-lez v5, :cond_6

    .line 171
    iget-object v6, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    aget v7, v6, p1

    add-int/2addr v7, v4

    aput v7, v6, p1

    add-int/lit8 v5, v5, -0x1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge p1, p2, :cond_9

    .line 179
    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 180
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_8

    goto :goto_6

    .line 183
    :cond_8
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    aget v5, v5, p1

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/view/View;->measure(II)V

    .line 185
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 186
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 187
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 191
    :cond_9
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 190
    invoke-static {v2, p1, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemHeight:I

    .line 192
    invoke-static {p2, v0, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 189
    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/BottomNavigationMenuView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundColorDrawable(Landroid/graphics/drawable/ColorDrawable;)V
    .locals 0

    .line 289
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSBBTextColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 234
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    .line 235
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 237
    invoke-virtual {v3, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    .line 279
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemBackgroundRes:I

    .line 280
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 282
    invoke-virtual {v3, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 257
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 258
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 260
    invoke-virtual {v3, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPresenter(Landroid/support/design/internal/BottomNavigationPresenter;)V
    .locals 0

    .line 308
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    return-void
.end method

.method public setShiftMode(Z)V
    .locals 0

    .line 409
    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    return-void
.end method

.method tryRestoreSelectedItemId(I)V
    .locals 4

    .line 441
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 443
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 444
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 445
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemId:I

    .line 446
    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    const/4 p1, 0x1

    .line 447
    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateMenuView()V
    .locals 6

    .line 378
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 379
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->buildMenuView()V

    return-void

    .line 384
    :cond_0
    iget v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 387
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 388
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 389
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemId:I

    .line 390
    iput v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    :cond_2
    iget v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemId:I

    if-eq v1, v3, :cond_3

    .line 395
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSet:Landroid/support/transition/TransitionSet;

    invoke-static {p0, v1}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 399
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 400
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v3, v3, v1

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3, v4, v2}, Landroid/support/design/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 401
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
