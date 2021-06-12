.class public Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;
.super Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-eqz p2, :cond_4

    .line 49
    sget-object v0, Lcom/samsung/android/app/music/R$styleable;->MilkGridViewPager:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->a:I

    .line 52
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->b:I

    const/4 v1, 0x6

    .line 53
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->g:I

    const/4 p2, 0x2

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    const/4 v2, 0x3

    .line 58
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    cmpl-float v3, p2, v1

    if-nez v3, :cond_0

    .line 61
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->c:I

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->a(F)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->c:I

    :goto_0
    cmpl-float p2, v2, v1

    if-nez p2, :cond_1

    .line 67
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->d:I

    goto :goto_1

    .line 69
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->a(F)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->d:I

    :goto_1
    const/4 p2, 0x4

    .line 72
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    const/4 v2, 0x5

    .line 74
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    cmpl-float v3, p2, v1

    if-nez v3, :cond_2

    .line 78
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->e:I

    goto :goto_2

    .line 80
    :cond_2
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->a(F)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->e:I

    :goto_2
    cmpl-float p2, v2, v1

    if-nez p2, :cond_3

    .line 84
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->f:I

    goto :goto_3

    .line 86
    :cond_3
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->a(F)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->f:I

    .line 89
    :goto_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    return-void
.end method

.method public static a(F)I
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method


# virtual methods
.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 10

    .line 99
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/widget/GridPagerAdapter;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 103
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->a:I

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->b:I

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->c:I

    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->d:I

    iget v7, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->e:I

    iget v8, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->f:I

    iget v9, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->g:I

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIIIIII)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->setLayoutManager(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V

    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Should use GridPagerAdapter if use GridViewPager!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLayoutManager(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V
    .locals 1

    .line 112
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 116
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setLayoutManager(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V

    return-void

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Should use MusicGridLayoutManager if use GridViewPager!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
