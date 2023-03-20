.class public Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$c;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$b;
    }
.end annotation


# static fields
.field public static final s:Landroid/view/animation/Interpolator;


# instance fields
.field public a:Landroid/content/res/ColorStateList;

.field public b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

.field public c:Landroidx/viewpager/widget/ViewPager;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public o:I

.field public p:Z

.field public q:I

.field public final r:Landroid/view/View$OnClickListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/interpolator/view/animation/b;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/b;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->s:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 3
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->d:I

    .line 4
    sget p3, Lcom/samsung/android/app/musiclibrary/r;->k:I

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->e:I

    const/4 p3, 0x1

    .line 5
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->f:I

    .line 6
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->g:I

    .line 7
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->h:I

    .line 8
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->o:I

    .line 9
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->p:Z

    .line 10
    sget p2, Lcom/samsung/android/app/musiclibrary/u;->t:I

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->q:I

    .line 11
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$a;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$a;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->r:Landroid/view/View$OnClickListener;

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->l(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/z;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->n(II)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setSelectedTabView(I)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private setSelectedTabView(I)V
    .locals 12

    .line 1
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->h:I

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/t;

    if-eqz v1, :cond_0

    .line 4
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/t;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 6
    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->f()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_5

    const/4 v6, 0x1

    add-int/lit8 v7, v3, -0x1

    if-le v5, v7, :cond_1

    goto :goto_3

    .line 7
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 8
    sget v8, Lcom/samsung/android/app/musiclibrary/s;->l0:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x2

    .line 9
    invoke-virtual {v7, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    if-ne v5, p1, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v4

    .line 10
    :goto_2
    invoke-virtual {v7, v9}, Landroid/view/View;->setSelected(Z)V

    .line 11
    invoke-virtual {v7, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 12
    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/a;->h(I)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v1, :cond_3

    .line 13
    invoke-interface {v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/t;->b(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 14
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 15
    :cond_3
    invoke-virtual {p0, v9, v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->k(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {v8}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v9, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-ne v5, p1, :cond_4

    const/4 v9, 0x4

    .line 17
    invoke-virtual {v7, v9}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 18
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
.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/t;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/t;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->f()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 5
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->q:I

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/a;->h(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 6
    invoke-interface {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/t;->a(I)I

    move-result v6

    .line 7
    invoke-virtual {p0, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->f(ILjava/lang/CharSequence;I)Landroid/view/View;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v3, v2, :cond_2

    .line 8
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->q:I

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/a;->h(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->g(ILjava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_3

    .line 10
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setSelectedTabView(I)V

    :cond_3
    return-void
.end method

.method public f(ILjava/lang/CharSequence;I)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sget v0, Lcom/samsung/android/app/musiclibrary/s;->l0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->f:I

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 6
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabTextSize(Landroid/view/View;)V

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->i()Landroid/graphics/drawable/RippleDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, -0x1

    if-eq p3, p2, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 14
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/app/musiclibrary/q;->a:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 17
    invoke-virtual {v0, p2, v2, p2, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public g(ILjava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->f(ILjava/lang/CharSequence;I)Landroid/view/View;

    return-void
.end method

.method public getTabMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->f:I

    return v0
.end method

.method public final getTabStrip()Lcom/samsung/android/app/musiclibrary/ui/widget/z;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public final i()Landroid/graphics/drawable/RippleDrawable;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/c;->j(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/p;->A:I

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/c;->j(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final j(II)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/x;->R0:I

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

.method public final k(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->j(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final l(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->q()V

    .line 2
    sget v0, Lcom/samsung/android/app/musiclibrary/p;->z:I

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setBackgroundResource(I)V

    .line 3
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public m()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->h()V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->e()V

    return-void
.end method

.method public final n(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 3
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->d:I

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    const/4 v0, 0x0

    if-eq p2, v1, :cond_2

    add-int/2addr p1, p2

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    new-array p2, p2, [I

    aput p1, p2, v0

    const-string p1, "scrollX"

    .line 9
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x12c

    .line 10
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 11
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->s:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 13
    :goto_0
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->d:I

    goto :goto_1

    .line 14
    :cond_3
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->d:I

    :cond_4
    :goto_1
    return-void
.end method

.method public o(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p2, 0x3ebd70a4    # 0.37f

    .line 3
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->p:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 2
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->d:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->n(II)V

    :cond_0
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public p(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p2, -0x1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->n(II)V

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setSelectedTabView(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->T(IZ)V

    :goto_0
    return-void
.end method

.method public final q()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    sget v1, Lcom/samsung/android/app/musiclibrary/p;->B:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 3
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->g:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 4
    invoke-static {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/c;->i(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 5
    :cond_0
    sget v3, Lcom/samsung/android/app/musiclibrary/p;->A:I

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/c;->i(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/c;->J(Landroid/view/View;Z)V

    return-void
.end method

.method public setFocusableChild(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIndicatorEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/z;->setIndicatorEnabled(Z)V

    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->g:I

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->q()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/z;->setIndicatorColor(I)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    sget v3, Lcom/samsung/android/app/musiclibrary/s;->l0:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 7
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->i()Landroid/graphics/drawable/RippleDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 10
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 11
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->p:Z

    return-void
.end method

.method public setTabBackgroundResource(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setBackgroundResource(I)V

    return-void
.end method

.method public setTabChildLayout(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->q:I

    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/z;->setIndicatorColorResource(I)V

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->f:I

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    return-void
.end method

.method public setTabTextColorResource(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/a;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setTabTextSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->o:I

    return-void
.end method

.method public setTabTextSize(Landroid/view/View;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->o:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/q;->H:I

    :goto_0
    const v2, 0x3f99999a    # 1.2f

    .line 4
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/c;->p(Landroid/content/res/Resources;IF)F

    move-result v0

    .line 5
    sget v1, Lcom/samsung/android/app/musiclibrary/s;->l0:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTabViewBackgroundResource(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->e:I

    return-void
.end method

.method public setTabViewSelected(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    sget v4, Lcom/samsung/android/app/musiclibrary/s;->l0:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-ne v2, p1, :cond_0

    const/4 v5, 0x1

    .line 4
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 5
    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/z;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/z;->b(IF)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 8
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

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->c:Landroidx/viewpager/widget/ViewPager;

    .line 2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$b;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$a;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 3
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$c;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$c;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/a;->n(Landroid/database/DataSetObserver;)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->h()V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->e()V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->p(IZ)V

    return-void
.end method
