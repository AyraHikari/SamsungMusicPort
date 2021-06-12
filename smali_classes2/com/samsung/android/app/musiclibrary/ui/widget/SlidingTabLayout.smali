.class public Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$PagerAdapterObserver;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;
    }
.end annotation


# static fields
.field private static final a:Landroid/view/animation/Interpolator;


# instance fields
.field private b:Landroid/content/res/ColorStateList;

.field private c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private k:Z

.field private l:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private final m:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 66
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->e:I

    .line 68
    sget p3, Lcom/samsung/android/app/musiclibrary/R$drawable;->tab_indicator_ripple_material:I

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->f:I

    const/4 p3, 0x1

    .line 70
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->g:I

    .line 72
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->h:I

    .line 74
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->i:I

    .line 76
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->j:I

    .line 79
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->k:Z

    .line 81
    sget p2, Lcom/samsung/android/app/musiclibrary/R$layout;->tab_indicator:I

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->l:I

    .line 602
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->m:Landroid/view/View$OnClickListener;

    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    return-object p0
.end method

.method private a(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 1

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(II)V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 430
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->e:I

    goto :goto_1

    .line 432
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 433
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 434
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 435
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    const/4 v0, 0x0

    if-eq p2, v1, :cond_2

    add-int/2addr p1, p2

    .line 438
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->scrollTo(II)V

    goto :goto_0

    :cond_2
    const-string p2, "scrollX"

    const/4 v2, 0x1

    .line 440
    new-array v2, v2, [I

    aput p1, v2, v0

    invoke-static {p0, p2, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x12c

    .line 441
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 442
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 443
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 445
    :goto_0
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->e:I

    goto :goto_1

    .line 447
    :cond_3
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->e:I

    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->d()V

    .line 103
    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->tab_background:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setBackgroundResource(I)V

    .line 105
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->setGravity(I)V

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setSelectedTabView(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->d:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method private b(II)Ljava/lang/String;
    .locals 4

    .line 508
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_tab_n_of_n:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c()V
    .locals 7

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 278
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 281
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 284
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->l:I

    invoke-virtual {v0, v3}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 285
    invoke-interface {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;->a(I)I

    move-result v6

    .line 284
    invoke-virtual {p0, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(ILjava/lang/CharSequence;I)Landroid/view/View;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v3, v2, :cond_2

    .line 289
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->l:I

    invoke-virtual {v0, v3}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(ILjava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 293
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->i:I

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_3

    .line 294
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->i:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setSelectedTabView(I)V

    :cond_3
    return-void
.end method

.method private d()V
    .locals 5

    .line 534
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 535
    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->tab_unselected_text_color:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 536
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->h:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 537
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->h:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 539
    :cond_0
    sget v3, Lcom/samsung/android/app/musiclibrary/R$color;->tab_selected_color:I

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 540
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Landroid/content/res/ColorStateList;

    :goto_0
    return-void
.end method

.method private e()Landroid/graphics/drawable/RippleDrawable;
    .locals 3

    .line 546
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 547
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 548
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->h:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v0

    goto :goto_0

    .line 550
    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->tab_selected_color:I

    const/4 v2, 0x0

    .line 551
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 550
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private setSelectedTabView(I)V
    .locals 12

    .line 453
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->i:I

    .line 454
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 455
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 458
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v2

    .line 459
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_5

    const/4 v6, 0x1

    add-int/lit8 v7, v3, -0x1

    if-le v5, v7, :cond_1

    goto :goto_3

    .line 464
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v7, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 465
    sget v8, Lcom/samsung/android/app/musiclibrary/R$id;->tab_text:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x2

    .line 467
    invoke-virtual {v7, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    if-ne v5, p1, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 468
    :goto_2
    invoke-virtual {v7, v9}, Landroid/view/View;->setSelected(Z)V

    .line 469
    invoke-virtual {v7, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 470
    invoke-virtual {v0, v5}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v1, :cond_3

    .line 472
    invoke-interface {v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/SamsungFeatureAdapter;->b(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 477
    :cond_3
    invoke-direct {p0, v9, v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 478
    invoke-virtual {v8}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v9, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-ne v5, p1, :cond_4

    const/4 v9, 0x4

    .line 480
    invoke-virtual {v7, v9}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 481
    invoke-virtual {v8}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;I)Landroid/view/View;
    .locals 4
    .param p3    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 204
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->tab_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 205
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->g:I

    if-nez v1, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 208
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 209
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 210
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 214
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabTextSize(Landroid/view/View;)V

    .line 217
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->e()Landroid/graphics/drawable/RippleDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, -0x1

    if-eq p3, p2, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 221
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 222
    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/app/musiclibrary/R$dimen;->heart_tab_view_padding_horizontal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 226
    invoke-virtual {v0, p2, v2, p2, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 230
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->removeAllViews()V

    return-void
.end method

.method public a(ILjava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    .line 199
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(ILjava/lang/CharSequence;I)Landroid/view/View;

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p2, -0x1

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(II)V

    .line 318
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setSelectedTabView(I)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->tab_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 190
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method b()V
    .locals 0

    .line 616
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a()V

    .line 617
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c()V

    return-void
.end method

.method public b(IZ)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 330
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p2, 0x3ebd70a4    # 0.37f

    .line 331
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public getTabMode()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->g:I

    return v0
.end method

.method protected final getTabStrip()Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->k:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 397
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 398
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->e:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 399
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->e:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(II)V

    :cond_0
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 388
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 390
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setFocusable(Z)V

    .line 392
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 405
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 408
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public setFocusableChild(Z)V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 341
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIndicatorEnabled(Z)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->setIndicatorEnabled(Z)V

    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 512
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->h:I

    .line 513
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->d()V

    .line 514
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->setIndicatorColor(I)V

    .line 516
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 520
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 521
    sget v3, Lcom/samsung/android/app/musiclibrary/R$id;->tab_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 522
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 523
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->e()Landroid/graphics/drawable/RippleDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 525
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 526
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 528
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    .line 414
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->k:Z

    return-void
.end method

.method public setTabBackgroundResource(I)V
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setTabChildLayout(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 150
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->l:I

    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->setIndicatorColorResource(I)V

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .line 160
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->g:I

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->setMeasureWithLargestChildEnabled(Z)V

    return-void
.end method

.method public setTabTextColorResource(I)V
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setTabTextSize(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 135
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->j:I

    return-void
.end method

.method protected setTabTextSize(Landroid/view/View;)V
    .locals 3

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->j:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->winset_tab_text:I

    :goto_0
    const v2, 0x3f99999a    # 1.2f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->b(Landroid/content/res/Resources;IF)F

    move-result v0

    .line 272
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->tab_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 273
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTabViewBackgroundResource(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->f:I

    return-void
.end method

.method public setTabViewSelected(I)V
    .locals 6

    .line 487
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 489
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 490
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->tab_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-ne v2, p1, :cond_0

    const/4 v5, 0x1

    .line 492
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 493
    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 494
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->a(IF)V

    goto :goto_1

    .line 496
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 497
    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .line 174
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->d:Landroid/support/v4/view/ViewPager;

    .line 175
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 176
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$PagerAdapterObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$PagerAdapterObserver;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a()V

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c()V

    const/4 p1, 0x0

    .line 181
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(IZ)V

    return-void
.end method
