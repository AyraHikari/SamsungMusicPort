.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/view/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TabLayout$AdapterChangeListener;,
        Landroid/support/design/widget/TabLayout$PagerAdapterObserver;,
        Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;,
        Landroid/support/design/widget/TabLayout$SlidingTabStrip;,
        Landroid/support/design/widget/TabLayout$TabView;,
        Landroid/support/design/widget/TabLayout$Tab;,
        Landroid/support/design/widget/TabLayout$OnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$TabGravity;,
        Landroid/support/design/widget/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field private static final INVALID_WIDTH:I = -0x1

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field public static final MODE_SEP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field public static final SESL_TAB_ANIM_INTERPOLATOR:I

.field public static final SESL_TAB_ANIM_MAIN_RIPPLE_HIDE_DURATION:I = 0x190

.field public static final SESL_TAB_ANIM_MAIN_RIPPLE_MINOR_SCALE:F = 0.95f

.field public static final SESL_TAB_ANIM_MAIN_RIPPLE_SHOW_DURATION:I = 0x15e

.field public static final SESL_TAB_ANIM_TEXT_COLOR_CHANGE_DURATION:I = 0x64

.field private static final SESL_TAB_DEPTH_MAIN_TYPE:I = 0x1

.field private static final SESL_TAB_DEPTH_SUB_TYPE:I = 0x2

.field private static final TAB_MIN_WIDTH_MARGIN:I

.field private static final sTabPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

.field private mBadgeColor:I

.field private mBadgeTextColor:I

.field private mBoldTypeface:Landroid/graphics/Typeface;

.field private mContentInsetStart:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

.field private mDepthStyle:I

.field private mIsScaledTextSizeType:Z

.field mMode:I

.field private mNormalTypeface:Landroid/graphics/Typeface;

.field private mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mPagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final mRequestedTabMaxWidth:I

.field private final mRequestedTabMinWidth:I

.field private mRequestedTabWidth:I

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private final mScrollableTabMinWidth:I

.field private mSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

.field private final mSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/design/widget/TabLayout$OnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mSetupViewPagerImplicitly:Z

.field private mSubTabIndicatorHeight:I

.field private mSubTabSelectedIndicatorColor:I

.field final mTabBackgroundResId:I

.field mTabGravity:I

.field mTabMaxWidth:I

.field mTabPaddingBottom:I

.field mTabPaddingEnd:I

.field mTabPaddingStart:I

.field mTabPaddingTop:I

.field private mTabSelectedIndicatorColor:I

.field private final mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

.field mTabTextAppearance:I

.field mTabTextColors:Landroid/content/res/ColorStateList;

.field mTabTextMultiLineSize:F

.field mTabTextSize:F

.field private final mTabViewPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Landroid/support/design/widget/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 192
    sget v0, Landroid/support/design/R$interpolator;->sine_in_out_80:I

    sput v0, Landroid/support/design/widget/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    .line 195
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 336
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 340
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 344
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 186
    iput v0, p0, Landroid/support/design/widget/TabLayout;->mSubTabIndicatorHeight:I

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    const v1, 0x7fffffff

    .line 297
    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    .line 323
    iput v0, p0, Landroid/support/design/widget/TabLayout;->mDepthStyle:I

    const/4 v1, -0x1

    .line 324
    iput v1, p0, Landroid/support/design/widget/TabLayout;->mBadgeColor:I

    .line 325
    iput v1, p0, Landroid/support/design/widget/TabLayout;->mBadgeTextColor:I

    .line 326
    iput v1, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabWidth:I

    .line 327
    iput v1, p0, Landroid/support/design/widget/TabLayout;->mSubTabSelectedIndicatorColor:I

    const/4 v2, 0x0

    .line 329
    iput-boolean v2, p0, Landroid/support/design/widget/TabLayout;->mIsScaledTextSizeType:Z

    .line 333
    new-instance v3, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    .line 346
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 349
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 352
    new-instance v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-direct {v3, p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    .line 353
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v3, v2, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 358
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->isLightTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    sget-object v3, Landroid/support/design/R$styleable;->TabLayout:[I

    sget v4, Landroid/support/design/R$style;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_0

    .line 362
    :cond_0
    sget-object v3, Landroid/support/design/R$styleable;->TabLayout:[I

    sget v4, Landroid/support/design/R$style;->Widget_Design_TabLayout_Dark:I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 366
    :goto_0
    iget-object p3, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    sget v3, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorHeight:I

    .line 367
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 366
    invoke-virtual {p3, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 368
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TabLayout;->mTabSelectedIndicatorColor:I

    .line 369
    iget-object p3, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    iget v3, p0, Landroid/support/design/widget/TabLayout;->mTabSelectedIndicatorColor:I

    invoke-virtual {p3, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 371
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabPadding:I

    .line 372
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    iput p3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    iput p3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    iput p3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    .line 373
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabPaddingStart:I

    iget v3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    .line 375
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabPaddingTop:I

    iget v3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    .line 377
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    .line 379
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    .line 382
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    sget v3, Landroid/support/design/R$style;->TextAppearance_Design_Tab:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    .line 386
    iget p3, p0, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 389
    :try_start_0
    sget v3, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p3, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    .line 391
    sget v3, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 392
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sp"

    .line 393
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/design/widget/TabLayout;->mIsScaledTextSizeType:Z

    .line 394
    sget v3, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    const-string p3, "sec-roboto-light"

    .line 401
    invoke-static {p3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Landroid/support/design/widget/TabLayout;->mBoldTypeface:Landroid/graphics/Typeface;

    const-string p3, "sec-roboto-light"

    .line 402
    invoke-static {p3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Landroid/support/design/widget/TabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mContentResolver:Landroid/content/ContentResolver;

    .line 405
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Landroid/support/design/R$dimen;->sesl_tablayout_subtab_indicator_height:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->mSubTabIndicatorHeight:I

    .line 408
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 410
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 413
    :cond_1
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 417
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 418
    iget-object p3, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    invoke-static {p3, p1}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 421
    :cond_2
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabMinWidth:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    .line 423
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabMaxWidth:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    .line 425
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabBackground:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    .line 426
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabContentStart:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->mContentInsetStart:I

    .line 427
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabMode:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 428
    iget p1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    const/16 p3, 0x10

    if-ne p1, p3, :cond_3

    .line 429
    iput v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 431
    :cond_3
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabGravity:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 432
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 435
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 436
    sget p2, Landroid/support/design/R$dimen;->sesl_tab_text_size_2line:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F

    .line 437
    sget p2, Landroid/support/design/R$dimen;->sesl_tab_scrollable_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->mScrollableTabMinWidth:I

    .line 440
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    return-void

    :catchall_0
    move-exception p1

    .line 397
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 398
    throw p1
.end method

.method static synthetic access$1000(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;II)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/TabLayout;->seslStartTextColorChangeAnimation(Landroid/widget/TextView;II)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/design/widget/TabLayout;)Landroid/graphics/Typeface;
    .locals 0

    .line 168
    iget-object p0, p0, Landroid/support/design/widget/TabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$1200(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->seslUpdateBadgePosition()V

    return-void
.end method

.method static synthetic access$1300(Landroid/support/design/widget/TabLayout;)I
    .locals 0

    .line 168
    iget p0, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabWidth:I

    return p0
.end method

.method static synthetic access$1400(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;I)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->checkMaxFontScale(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$1500(Landroid/support/design/widget/TabLayout;)I
    .locals 0

    .line 168
    iget p0, p0, Landroid/support/design/widget/TabLayout;->mSubTabIndicatorHeight:I

    return p0
.end method

.method static synthetic access$1600(Landroid/support/design/widget/TabLayout;)I
    .locals 0

    .line 168
    iget p0, p0, Landroid/support/design/widget/TabLayout;->mSubTabSelectedIndicatorColor:I

    return p0
.end method

.method static synthetic access$1700(Landroid/support/design/widget/TabLayout;)I
    .locals 0

    .line 168
    iget p0, p0, Landroid/support/design/widget/TabLayout;->mTabSelectedIndicatorColor:I

    return p0
.end method

.method static synthetic access$1800(Landroid/support/design/widget/TabLayout;)Z
    .locals 0

    .line 168
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->isLightTheme()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Landroid/support/design/widget/TabLayout;)I
    .locals 0

    .line 168
    iget p0, p0, Landroid/support/design/widget/TabLayout;->mDepthStyle:I

    return p0
.end method

.method static synthetic access$800(Landroid/support/design/widget/TabLayout;)Landroid/graphics/Typeface;
    .locals 0

    .line 168
    iget-object p0, p0, Landroid/support/design/widget/TabLayout;->mBoldTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$900(Landroid/support/design/widget/TabLayout;)I
    .locals 0

    .line 168
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->seslGetSelctedTabTextColor()I

    move-result p0

    return p0
.end method

.method private addTabFromItemView(Landroid/support/design/widget/TabItem;)V
    .locals 2
    .param p1    # Landroid/support/design/widget/TabItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 625
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 626
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 629
    :cond_0
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;

    .line 632
    :cond_1
    iget v1, p1, Landroid/support/design/widget/TabItem;->mCustomLayout:I

    if-eqz v1, :cond_2

    .line 633
    iget v1, p1, Landroid/support/design/widget/TabItem;->mCustomLayout:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 635
    :cond_2
    invoke-virtual {p1}, Landroid/support/design/widget/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 636
    invoke-virtual {p1}, Landroid/support/design/widget/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 638
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    return-void
.end method

.method private addTabView(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3

    .line 1108
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    .line 1109
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 1

    .line 1133
    instance-of v0, p1, Landroid/support/design/widget/TabItem;

    if-eqz v0, :cond_0

    .line 1134
    check-cast p1, Landroid/support/design/widget/TabItem;

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addTabFromItemView(Landroid/support/design/widget/TabItem;)V

    return-void

    .line 1136
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private animateToTab(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1233
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    .line 1234
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1241
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    .line 1242
    invoke-direct {p0, p1, v2}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1245
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->ensureScrollAnimator()V

    .line 1247
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1248
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1252
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const/16 v1, 0x12c

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    return-void

    .line 1237
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private applyModeAndGravity()V
    .locals 3

    .line 1418
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setPaddingRelative(IIII)V

    .line 1420
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1422
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_0

    .line 1425
    :pswitch_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    .line 1429
    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .locals 3

    .line 1397
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1398
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 1399
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    .line 1400
    invoke-virtual {v2, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1402
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 1403
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1406
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v2, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    add-int/2addr v2, v1

    int-to-float v0, v2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 1410
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    add-int/2addr p1, p2

    goto :goto_2

    :cond_3
    sub-int/2addr p1, p2

    :goto_2
    return p1

    :cond_4
    return v1
.end method

.method private checkMaxFontScale(Landroid/widget/TextView;I)V
    .locals 3

    .line 2771
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p1, :cond_0

    .line 2773
    iget-boolean v1, p0, Landroid/support/design/widget/TabLayout;->mIsScaledTextSizeType:Z

    if-eqz v1, :cond_0

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    int-to-float p2, p2

    div-float/2addr p2, v0

    const/4 v0, 0x0

    mul-float p2, p2, v1

    .line 2775
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .locals 1

    .line 1098
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 1099
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1101
    iget-object p1, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 1103
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x2

    .line 2596
    new-array v1, v0, [[I

    .line 2597
    new-array v0, v0, [I

    .line 2600
    sget-object v2, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p1, v0, v3

    .line 2605
    sget-object p1, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    aput p0, v0, v2

    .line 2609
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1141
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1143
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;
    .locals 2
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1087
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1089
    new-instance v0, Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TabLayout$TabView;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    .line 1091
    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    const/4 p1, 0x1

    .line 1092
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setFocusable(Z)V

    .line 1093
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setMinimumWidth(I)V

    return-object v0
.end method

.method private dispatchTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1391
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1392
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1379
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1380
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1385
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1386
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    .line 1256
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1257
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 1258
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1259
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1260
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/TabLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5

    .line 2614
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2615
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v3, :cond_0

    .line 2616
    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const/16 v0, 0x48

    goto :goto_2

    :cond_2
    const/16 v0, 0x30

    :goto_2
    return v0
.end method

.method private getRelativeLayoutRule(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    .line 2958
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object p1

    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    .line 2960
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->isLayoutRTL()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 2962
    :cond_1
    :goto_0
    aget p1, p1, p2

    return p1
.end method

.method private getScrollPosition()F
    .locals 1

    .line 571
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getIndicatorPosition()F

    move-result v0

    return v0
.end method

.method private getTabMinWidth()I
    .locals 2

    .line 2625
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2627
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    return v0

    .line 2630
    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->mScrollableTabMinWidth:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 1037
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1038
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1037
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isLayoutRTL()Z
    .locals 2

    .line 2966
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isLightTheme()Z
    .locals 4

    .line 482
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 483
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 484
    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private removeTabViewAt(I)V
    .locals 2

    .line 1219
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    .line 1220
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->removeViewAt(I)V

    if-eqz v0, :cond_0

    .line 1222
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->reset()V

    .line 1223
    iget-object p1, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1225
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    return-void
.end method

.method private seslGetSelctedTabTextColor()I
    .locals 3

    .line 3004
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 3005
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 3006
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 3005
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0

    nop

    :array_0
    .array-data 4
        0x10100a1
        0x101009e
    .end array-data
.end method

.method private seslSetSelectedTabView(IZ)V
    .locals 7

    .line 1279
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    .line 1280
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_9

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 1283
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v4, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 1284
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1287
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    const/4 v0, 0x0

    .line 1289
    :goto_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 1290
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    if-ne v0, p1, :cond_5

    .line 1293
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1294
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->seslGetSelctedTabTextColor()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 1296
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->seslGetSelctedTabTextColor()I

    move-result v6

    .line 1295
    invoke-direct {p0, v4, v5, v6}, Landroid/support/design/widget/TabLayout;->seslStartTextColorChangeAnimation(Landroid/widget/TextView;II)V

    goto :goto_3

    .line 1299
    :cond_2
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->seslGetSelctedTabTextColor()I

    move-result v5

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->seslGetSelctedTabTextColor()I

    move-result v6

    .line 1298
    invoke-direct {p0, v4, v5, v6}, Landroid/support/design/widget/TabLayout;->seslStartTextColorChangeAnimation(Landroid/widget/TextView;II)V

    .line 1301
    :goto_3
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->mBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1302
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1304
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$300(Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/internal/SeslAbsIndicatorView;

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz p2, :cond_4

    .line 1306
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$300(Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/internal/SeslAbsIndicatorView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/internal/SeslAbsIndicatorView;->showImmediatly()V

    goto :goto_5

    .line 1308
    :cond_4
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$300(Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/internal/SeslAbsIndicatorView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/internal/SeslAbsIndicatorView;->setReleased()V

    goto :goto_5

    .line 1312
    :cond_5
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$300(Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/internal/SeslAbsIndicatorView;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1313
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$300(Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/internal/SeslAbsIndicatorView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/design/internal/SeslAbsIndicatorView;->setHideImmediatly()V

    .line 1315
    :cond_6
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1316
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1317
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 1319
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->seslGetSelctedTabTextColor()I

    move-result v5

    iget-object v6, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 1318
    invoke-direct {p0, v4, v5, v6}, Landroid/support/design/widget/TabLayout;->seslStartTextColorChangeAnimation(Landroid/widget/TextView;II)V

    goto :goto_4

    .line 1322
    :cond_7
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    iget-object v6, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 1321
    invoke-direct {p0, v4, v5, v6}, Landroid/support/design/widget/TabLayout;->seslStartTextColorChangeAnimation(Landroid/widget/TextView;II)V

    .line 1324
    :goto_4
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method private seslStartTextColorChangeAnimation(Landroid/widget/TextView;II)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 3017
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private seslUpdateBadgePosition()V
    .locals 8

    .line 2918
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2919
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2920
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v2, :cond_4

    .line 2921
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    .line 2922
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v3

    .line 2923
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$TabView;->getWidth()I

    move-result v4

    if-lez v4, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    .line 2925
    iget-object v5, v2, Landroid/support/design/widget/TabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/support/design/widget/TabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2926
    iget-object v4, v2, Landroid/support/design/widget/TabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    goto :goto_1

    .line 2927
    :cond_0
    iget-object v5, v2, Landroid/support/design/widget/TabLayout$TabView;->mDotBadgeView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, v2, Landroid/support/design/widget/TabLayout$TabView;->mDotBadgeView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 2928
    iget-object v4, v2, Landroid/support/design/widget/TabLayout$TabView;->mDotBadgeView:Landroid/widget/TextView;

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    goto :goto_2

    .line 2934
    :cond_2
    invoke-virtual {v4, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 2935
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2936
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$TabView;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    const/16 v5, 0x15

    const/16 v6, 0x11

    if-ge v2, v3, :cond_3

    .line 2937
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2938
    invoke-direct {p0, v2, v6}, Landroid/support/design/widget/TabLayout;->getRelativeLayoutRule(Landroid/widget/RelativeLayout$LayoutParams;I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 2939
    invoke-virtual {v2, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2940
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2941
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 2944
    :cond_3
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2945
    invoke-direct {p0, v2, v6}, Landroid/support/design/widget/TabLayout;->getRelativeLayoutRule(Landroid/widget/RelativeLayout$LayoutParams;I)I

    move-result v3

    sget v7, Landroid/support/design/R$id;->title:I

    if-eq v3, v7, :cond_4

    .line 2946
    sget v3, Landroid/support/design/R$id;->title:I

    invoke-virtual {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2947
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 2948
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1275
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->seslSetSelectedTabView(IZ)V

    return-void
.end method

.method private setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V
    .locals 2
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 922
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 927
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 932
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 934
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 935
    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    :cond_2
    if-eqz p1, :cond_6

    .line 939
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 942
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_3

    .line 943
    new-instance v0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    .line 945
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 946
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 949
    new-instance v0, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 950
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 952
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 956
    invoke-virtual {p0, v0, p2}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 960
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    if-nez v0, :cond_5

    .line 961
    new-instance v0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$AdapterChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    .line 963
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 964
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 967
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 971
    :cond_6
    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 p1, 0x0

    .line 972
    invoke-virtual {p0, v1, p1}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 975
    :goto_0
    iput-boolean p3, p0, Landroid/support/design/widget/TabLayout;->mSetupViewPagerImplicitly:Z

    return-void
.end method

.method private updateAllTabs()V
    .locals 3

    .line 1081
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1082
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .line 1148
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1149
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1150
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 1152
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 1153
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/TabLayout$OnTabSelectedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 670
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 581
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .locals 1
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 592
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V
    .locals 1
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 613
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    if-ne v0, p0, :cond_1

    .line 616
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 617
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addTabView(Landroid/support/design/widget/TabLayout$Tab;)V

    if-eqz p3, :cond_0

    .line 620
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    :cond_0
    return-void

    .line 614
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tab belongs to a different TabLayout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 1
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 602
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1114
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 1119
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1129
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1124
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .locals 1

    .line 689
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method dpToPx(I)I
    .locals 1

    .line 1158
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2639
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .line 733
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_1

    .line 724
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    .line 716
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .line 853
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    return v0
.end method

.method getTabMaxWidth()I
    .locals 1

    .line 2643
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .line 829
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 873
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public newTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 701
    sget-object v0, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    if-nez v0, :cond_0

    .line 703
    new-instance v0, Landroid/support/design/widget/TabLayout$Tab;

    invoke-direct {v0}, Landroid/support/design/widget/TabLayout$Tab;-><init>()V

    .line 705
    :cond_0
    iput-object p0, v0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    .line 706
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v1

    iput-object v1, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 996
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 998
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 999
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v1, :cond_2

    .line 1000
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout$TabView;->access$400(Landroid/support/design/widget/TabLayout$TabView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1001
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout$TabView;->access$400(Landroid/support/design/widget/TabLayout$TabView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1003
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout$TabView;->access$300(Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/internal/SeslAbsIndicatorView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1004
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1005
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout$TabView;->access$300(Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/internal/SeslAbsIndicatorView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/internal/SeslAbsIndicatorView;->setShow()V

    goto :goto_1

    .line 1007
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout$TabView;->access$300(Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/internal/SeslAbsIndicatorView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/internal/SeslAbsIndicatorView;->setHideImmediatly()V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_4

    .line 1016
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1017
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_4

    .line 1020
    check-cast v0, Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V

    :cond_4
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 3032
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 3033
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3034
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v0, :cond_0

    .line 3035
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout$TabView;->access$400(Landroid/support/design/widget/TabLayout$TabView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3036
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout$TabView;->access$400(Landroid/support/design/widget/TabLayout$TabView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1027
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 1029
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->mSetupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1031
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    const/4 v0, 0x0

    .line 1032
    iput-boolean v0, p0, Landroid/support/design/widget/TabLayout;->mSetupViewPagerImplicitly:Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1165
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1166
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1173
    :cond_0
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1169
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1168
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1177
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1178
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1181
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    if-lez v1, :cond_2

    iget v0, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    goto :goto_1

    .line 1183
    :cond_2
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_1
    iput v0, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    .line 1187
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1189
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 1192
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1195
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 1203
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-eq v1, v4, :cond_4

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    .line 1199
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-ge v1, v4, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 1209
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v0

    .line 1210
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1209
    invoke-static {p2, v0, v1}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 1212
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v0

    .line 1211
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1213
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 3022
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onVisibilityChanged(Landroid/view/View;I)V

    const/4 p1, 0x0

    .line 3023
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 3024
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p2

    iget-object p2, p2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    if-eqz p2, :cond_0

    .line 3025
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p2

    iget-object p2, p2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {p2}, Landroid/support/design/widget/TabLayout$TabView;->access$400(Landroid/support/design/widget/TabLayout$TabView;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3026
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p2

    iget-object p2, p2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {p2}, Landroid/support/design/widget/TabLayout$TabView;->access$400(Landroid/support/design/widget/TabLayout$TabView;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method populateFromPagerAdapter()V
    .locals 5

    .line 1062
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    .line 1064
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1065
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1067
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1071
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 1072
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1073
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1074
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/support/design/widget/TabLayout;->seslSelectTab(Landroid/support/design/widget/TabLayout$Tab;ZZ)V

    :cond_1
    return-void
.end method

.method public removeAllTabs()V
    .locals 3

    .line 781
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 782
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 785
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$Tab;

    .line 787
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 788
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->reset()V

    .line 789
    sget-object v2, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 792
    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    return-void
.end method

.method public removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/TabLayout$OnTabSelectedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 682
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1

    .line 743
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    if-ne v0, p0, :cond_0

    .line 747
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->removeTabAt(I)V

    return-void

    .line 744
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab does not belong to this TabLayout."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTabAt(I)V
    .locals 5

    .line 757
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 758
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 760
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_1

    .line 762
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->reset()V

    .line 763
    sget-object v3, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v3, v2}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 766
    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 768
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v4, v3}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_4

    .line 772
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout$Tab;

    :goto_2
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    :cond_4
    return-void
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1

    const/4 v0, 0x1

    .line 1333
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    return-void
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1337
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->seslSelectTab(Landroid/support/design/widget/TabLayout$Tab;ZZ)V

    return-void
.end method

.method seslSelectTab(Landroid/support/design/widget/TabLayout$Tab;ZZ)V
    .locals 4

    .line 1342
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1343
    iget-object p1, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void

    .line 1347
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-ne v0, p1, :cond_1

    if-eqz v0, :cond_7

    .line 1351
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->dispatchTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1352
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    if-eqz p1, :cond_2

    .line 1355
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    if-eqz p2, :cond_5

    if-eqz v0, :cond_3

    .line 1357
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p2

    if-ne p2, v1, :cond_4

    :cond_3
    if-eq v2, v1, :cond_4

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 1360
    invoke-virtual {p0, v2, p2, v3}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 1362
    :cond_4
    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    :goto_1
    if-eq v2, v1, :cond_5

    .line 1365
    invoke-direct {p0, v2, p3}, Landroid/support/design/widget/TabLayout;->seslSetSelectedTabView(IZ)V

    :cond_5
    if-eqz v0, :cond_6

    .line 1369
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->dispatchTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1371
    :cond_6
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz p1, :cond_7

    .line 1373
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public seslSetBadgeColor(I)V
    .locals 0

    .line 2992
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mBadgeColor:I

    return-void
.end method

.method public seslSetBadgeTextColor(I)V
    .locals 0

    .line 2996
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mBadgeTextColor:I

    return-void
.end method

.method public seslSetSubTabIndicatorHeight(I)V
    .locals 0

    .line 3041
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mSubTabIndicatorHeight:I

    return-void
.end method

.method public seslSetSubTabSelectedIndicatorColor(I)V
    .locals 0

    .line 2970
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mSubTabSelectedIndicatorColor:I

    .line 2971
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    return-void
.end method

.method public seslSetSubTabStyle()V
    .locals 7

    .line 446
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mDepthStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x2

    .line 447
    iput v0, p0, Landroid/support/design/widget/TabLayout;->mDepthStyle:I

    .line 449
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/design/R$color;->sesl_tablayout_subtab_text_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/design/R$color;->sesl_tablayout_subtab_text_color_dark:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 452
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    .line 453
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 454
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 455
    :goto_1
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 456
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    .line 457
    iget-object v6, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/support/design/widget/TabLayout$Tab;->access$002(Landroid/support/design/widget/TabLayout$Tab;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 458
    iget-object v6, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/support/design/widget/TabLayout$Tab;->access$102(Landroid/support/design/widget/TabLayout$Tab;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 459
    iget-object v6, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout$Tab;->access$200(Landroid/support/design/widget/TabLayout$Tab;)Landroid/view/View;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/support/design/widget/TabLayout$Tab;->access$202(Landroid/support/design/widget/TabLayout$Tab;Landroid/view/View;)Landroid/view/View;

    if-ne v4, v0, :cond_1

    .line 461
    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 462
    :cond_1
    iget-object v6, v5, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    .line 463
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 465
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    const/4 v4, 0x0

    .line 467
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 468
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/TabLayout$Tab;

    if-ne v4, v0, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {p0, v5, v6}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 469
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 470
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/TabLayout$Tab;

    iget-object v5, v5, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 473
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_6
    return-void
.end method

.method public seslSetTabTextColor(Landroid/content/res/ColorStateList;Z)V
    .locals 1

    .line 2975
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_2

    .line 2976
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_0

    .line 2978
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->updateAllTabs()V

    goto :goto_1

    .line 2980
    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 2981
    :goto_0
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 2982
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TabLayout$Tab;

    iget-object p2, p2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TabLayout$Tab;

    iget-object p2, p2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {p2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2983
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TabLayout$Tab;

    iget-object p2, p2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {p2}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public seslSetTabWidth(I)V
    .locals 0

    .line 3000
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabWidth:I

    return-void
.end method

.method public seslShowBadge(IZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2840
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/TabLayout;->seslShowBadge(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public seslShowBadge(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2849
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v0, :cond_6

    .line 2850
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout$Tab;

    iget-object p1, p1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    .line 2852
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-nez v0, :cond_0

    .line 2853
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2855
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2856
    sget v5, Landroid/support/design/R$id;->title:I

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2857
    invoke-virtual {p0, v6}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v4, v2, v5, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2858
    sget v5, Landroid/support/design/R$id;->title:I

    invoke-virtual {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2859
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2860
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    const/4 v5, 0x1

    const/high16 v6, 0x41300000    # 11.0f

    .line 2861
    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2862
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2863
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/design/R$color;->sesl_badge_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2864
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/design/R$drawable;->sesl_tab_n_badge:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2865
    sget v5, Landroid/support/design/R$id;->sesl_badge_n:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setId(I)V

    .line 2867
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$TabView;->access$2000(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2868
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$TabView;->access$2000(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2869
    iput-object v0, p1, Landroid/support/design/widget/TabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    .line 2873
    :cond_0
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 2874
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    .line 2875
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_5

    .line 2878
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2880
    iget p2, p0, Landroid/support/design/widget/TabLayout;->mBadgeColor:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    .line 2881
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v1, p0, Landroid/support/design/widget/TabLayout;->mBadgeColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2883
    :cond_1
    iget p2, p0, Landroid/support/design/widget/TabLayout;->mBadgeTextColor:I

    if-eq p2, p3, :cond_2

    .line 2884
    iget p2, p0, Landroid/support/design/widget/TabLayout;->mBadgeTextColor:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    if-eqz p4, :cond_3

    .line 2887
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2890
    :cond_3
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 2891
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$TabView;->getWidth()I

    move-result p3

    if-lez p3, :cond_6

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p3

    if-lez p3, :cond_6

    .line 2892
    invoke-virtual {v0, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 2893
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$TabView;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    const/16 p3, 0x15

    if-ge p1, p2, :cond_4

    .line 2894
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2895
    invoke-direct {p0, p1, v3}, Landroid/support/design/widget/TabLayout;->getRelativeLayoutRule(Landroid/widget/RelativeLayout$LayoutParams;I)I

    move-result p2

    if-eqz p2, :cond_6

    .line 2896
    invoke-virtual {p1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2897
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2898
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2901
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2902
    invoke-direct {p0, p1, v3}, Landroid/support/design/widget/TabLayout;->getRelativeLayoutRule(Landroid/widget/RelativeLayout$LayoutParams;I)I

    move-result p2

    sget p4, Landroid/support/design/R$id;->title:I

    if-eq p2, p4, :cond_6

    .line 2903
    sget p2, Landroid/support/design/R$id;->title:I

    invoke-virtual {p1, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2904
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 2905
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2911
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public seslShowDotBadge(IZ)V
    .locals 7

    .line 2780
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v0, :cond_5

    .line 2781
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout$Tab;

    iget-object p1, p1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    .line 2783
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$TabView;->mDotBadgeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/16 v2, 0x11

    if-nez v0, :cond_0

    .line 2784
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2786
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2787
    sget v5, Landroid/support/design/R$id;->title:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x1

    .line 2788
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 2789
    sget v4, Landroid/support/design/R$id;->title:I

    invoke-virtual {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2790
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2791
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/design/R$drawable;->sesl_dot_badge:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2792
    sget v4, Landroid/support/design/R$id;->sesl_badge_dot:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setId(I)V

    .line 2793
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$TabView;->access$2000(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2794
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$TabView;->access$2000(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2795
    iput-object v0, p1, Landroid/support/design/widget/TabLayout$TabView;->mDotBadgeView:Landroid/widget/TextView;

    .line 2798
    :cond_0
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$TabView;->mDotBadgeView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 2799
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$TabView;->mDotBadgeView:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 2801
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2802
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mBadgeColor:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 2803
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v3, p0, Landroid/support/design/widget/TabLayout;->mBadgeColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2806
    :cond_1
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v1

    .line 2807
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/design/R$dimen;->sesl_tablayout_subtab_dot_badge_xoffset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2808
    iget v4, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v4, :cond_2

    return-void

    :cond_2
    if-eqz v1, :cond_5

    .line 2811
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$TabView;->getWidth()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    if-lez v4, :cond_5

    .line 2812
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$TabView;->getWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    const/16 v3, 0x15

    if-ge p1, v1, :cond_3

    .line 2813
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2814
    invoke-direct {p0, p1, v2}, Landroid/support/design/widget/TabLayout;->getRelativeLayoutRule(Landroid/widget/RelativeLayout$LayoutParams;I)I

    move-result v1

    if-eqz v1, :cond_5

    .line 2815
    invoke-virtual {p1, v2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2816
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2817
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2820
    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2821
    invoke-direct {p0, p1, v2}, Landroid/support/design/widget/TabLayout;->getRelativeLayoutRule(Landroid/widget/RelativeLayout$LayoutParams;I)I

    move-result p2

    sget v1, Landroid/support/design/R$id;->title:I

    if-eq p2, v1, :cond_5

    .line 2822
    sget p2, Landroid/support/design/R$id;->title:I

    invoke-virtual {p1, v2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2823
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 2824
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2829
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/TabLayout$OnTabSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 649
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 654
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz p1, :cond_1

    .line 656
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    :cond_1
    return-void
.end method

.method setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V
    .locals 2
    .param p1    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1042
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1047
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1051
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1

    .line 1052
    new-instance p2, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;

    invoke-direct {p2, p0}, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object p2, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 1054
    :cond_1
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1058
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1270
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->ensureScrollAnimator()V

    .line 1271
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 536
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method setScrollPosition(IFZZ)V
    .locals 2

    .line 542
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 548
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_5

    .line 549
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 555
    iget-object p4, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {p4, p1, p2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 559
    :cond_2
    iget-object p4, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_3

    iget-object p4, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 560
    iget-object p4, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 562
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    if-eqz p3, :cond_4

    .line 566
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 496
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mTabSelectedIndicatorColor:I

    .line 498
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$Tab;

    .line 499
    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout$TabView;->access$300(Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/internal/SeslAbsIndicatorView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 501
    iget v2, p0, Landroid/support/design/widget/TabLayout;->mDepthStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/support/design/widget/TabLayout;->mSubTabSelectedIndicatorColor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 503
    iget v2, p0, Landroid/support/design/widget/TabLayout;->mSubTabSelectedIndicatorColor:I

    invoke-virtual {v1, v2}, Landroid/support/design/internal/SeslAbsIndicatorView;->setSelectedIndicatorColor(I)V

    goto :goto_1

    .line 505
    :cond_1
    invoke-virtual {v1, p1}, Landroid/support/design/internal/SeslAbsIndicatorView;->setSelectedIndicatorColor(I)V

    .line 507
    :goto_1
    invoke-virtual {v1}, Landroid/support/design/internal/SeslAbsIndicatorView;->invalidate()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1

    .line 522
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    .line 840
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    if-eq v0, p1, :cond_0

    .line 841
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 842
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .line 811
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 813
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    goto :goto_0

    .line 815
    :cond_0
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 818
    :goto_0
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    :cond_1
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 0

    .line 883
    invoke-static {p1, p2}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 862
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 863
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 864
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->updateAllTabs()V

    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .param p1    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 985
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 895
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V
    .locals 1
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 917
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 991
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method updateTabViews(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1433
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1434
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1435
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1436
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 1438
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
