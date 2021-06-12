.class public Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;
.super Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
.source "SourceFile"


# instance fields
.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->e:F

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 30
    sget-object p3, Lcom/samsung/android/app/music/R$styleable;->MilkRatioView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 33
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->setRatio(F)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getTargetHeight()I
    .locals 3

    .line 44
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->getTargetHeight()I

    move-result v0

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->getTargetWidth()I

    move-result v1

    if-lez v1, :cond_0

    if-gtz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->e:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->getTargetWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->e:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    return v0
.end method

.method protected getViewHeight()I
    .locals 3

    .line 53
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->getViewHeight()I

    move-result v0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->getViewWidth()I

    move-result v1

    if-lez v1, :cond_0

    if-gtz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->e:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->e:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 67
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->onMeasure(II)V

    .line 68
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->e:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->e:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->e:F

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->requestLayout()V

    return-void
.end method
