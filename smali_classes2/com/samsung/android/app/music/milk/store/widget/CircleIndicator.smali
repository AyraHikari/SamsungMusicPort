.class public Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$ReverseInterpolator;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/animation/Animator;

.field private j:Landroid/animation/Animator;

.field private k:Landroid/animation/Animator;

.field private l:Landroid/animation/Animator;

.field private m:I

.field private final n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private o:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b:I

    .line 27
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c:I

    .line 28
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->d:I

    const v1, 0x7f060005

    .line 29
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->e:I

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->f:I

    const v1, 0x7f02024d

    .line 31
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->g:I

    .line 32
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->h:I

    .line 38
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->m:I

    .line 174
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 220
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->o:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b:I

    .line 27
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c:I

    .line 28
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->d:I

    const v1, 0x7f060005

    .line 29
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->e:I

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->f:I

    const v1, 0x7f02024d

    .line 31
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->g:I

    .line 32
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->h:I

    .line 38
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->m:I

    .line 174
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 220
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->o:Landroid/database/DataSetObserver;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 26
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b:I

    .line 27
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c:I

    .line 28
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->d:I

    const v0, 0x7f060005

    .line 29
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->e:I

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->f:I

    const v0, 0x7f02024d

    .line 31
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->g:I

    .line 32
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->h:I

    .line 38
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->m:I

    .line 174
    new-instance p3, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 220
    new-instance p3, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->o:Landroid/database/DataSetObserver;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, -0x1

    .line 26
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b:I

    .line 27
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c:I

    .line 28
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->d:I

    const p4, 0x7f060005

    .line 29
    iput p4, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->e:I

    const/4 p4, 0x0

    .line 30
    iput p4, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->f:I

    const p4, 0x7f02024d

    .line 31
    iput p4, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->g:I

    .line 32
    iput p4, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->h:I

    .line 38
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->m:I

    .line 174
    new-instance p3, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 220
    new-instance p3, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->o:Landroid/database/DataSetObserver;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->m:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->removeAllViews()V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    if-ne v1, v2, :cond_1

    .line 263
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->g:I

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->k:Landroid/animation/Animator;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(ILandroid/animation/Animator;)V

    goto :goto_1

    .line 265
    :cond_1
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->h:I

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->l:Landroid/animation/Animator;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(ILandroid/animation/Animator;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(ILandroid/animation/Animator;)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 271
    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    .line 273
    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 276
    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 278
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c:I

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->d:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->addView(Landroid/view/View;II)V

    .line 279
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 280
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 281
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 282
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 125
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c:I

    const/high16 v1, 0x40c00000    # 6.0f

    if-gez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(F)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c:I

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c:I

    .line 126
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->d:I

    if-gez v0, :cond_1

    .line 127
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(F)I

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->d:I

    :goto_1
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->d:I

    .line 128
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b:I

    if-gez v0, :cond_2

    const/high16 v0, 0x40d00000    # 6.5f

    .line 129
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(F)I

    move-result v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b:I

    :goto_2
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b:I

    .line 131
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->e:I

    if-nez v0, :cond_3

    const v0, 0x7f060005

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->e:I

    :goto_3
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->e:I

    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->i:Landroid/animation/Animator;

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->k:Landroid/animation/Animator;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->k:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 137
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->j:Landroid/animation/Animator;

    .line 138
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->l:Landroid/animation/Animator;

    .line 139
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->l:Landroid/animation/Animator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 141
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->g:I

    if-nez p1, :cond_4

    const p1, 0x7f02024d

    goto :goto_4

    :cond_4
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->g:I

    :goto_4
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->g:I

    .line 143
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->h:I

    if-nez p1, :cond_5

    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->g:I

    goto :goto_5

    :cond_5
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->h:I

    :goto_5
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->h:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 1

    .line 149
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->e:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->j:Landroid/animation/Animator;

    return-object p0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/R$styleable;->MilkCircleIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 73
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c:I

    const/4 v1, 0x1

    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->d:I

    const/4 v2, 0x2

    .line 77
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b:I

    const/4 v2, 0x3

    const v3, 0x7f060005

    .line 79
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->e:I

    const/4 v2, 0x4

    .line 82
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->f:I

    const/4 v2, 0x5

    const v3, 0x7f02024d

    .line 84
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->g:I

    const/4 v2, 0x6

    .line 86
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->g:I

    .line 87
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->h:I

    const/4 v2, 0x7

    .line 90
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 p2, 0x1

    .line 91
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->setOrientation(I)V

    const/16 p2, 0x8

    .line 93
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0x11

    .line 94
    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->setGravity(I)V

    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private c(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 2

    .line 154
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->f:I

    if-nez v0, :cond_0

    .line 155
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->e:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    .line 156
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$ReverseInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$ReverseInterpolator;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 158
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->f:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->i:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->m:I

    return p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->h:I

    return p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->g:I

    return p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a()V

    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getDataSetObserver()Landroid/database/DataSetObserver;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->o:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void

    .line 247
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "can not find Viewpager , setViewPager first"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 164
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 166
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->m:I

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a()V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 170
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method
