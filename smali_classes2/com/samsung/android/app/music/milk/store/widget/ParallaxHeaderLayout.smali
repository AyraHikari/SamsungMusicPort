.class public Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/Expandable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;
    }
.end annotation


# instance fields
.field a:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;

.field private b:I

.field private c:Landroid/support/v4/view/WindowInsetsCompat;

.field private d:I

.field private e:F

.field private f:Landroid/view/View;

.field private g:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method private a(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 175
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->a(ZZZ)V

    return-void
.end method

.method private a(ZZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    or-int/2addr p1, p2

    if-eqz p3, :cond_2

    const/16 v0, 0x8

    :cond_2
    or-int/2addr p1, v0

    .line 179
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->d:I

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->requestLayout()V

    return-void
.end method

.method private setExpanded(Z)V
    .locals 1

    .line 159
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->a(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->d:I

    return-void
.end method

.method public a(I)V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->a:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->a:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v1

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 196
    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;->a(II)V

    .line 199
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->g:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->f:Landroid/view/View;

    if-nez v0, :cond_1

    .line 200
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->g:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->f:Landroid/view/View;

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 204
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->f:Landroid/view/View;

    neg-int p1, p1

    int-to-float p1, p1

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->e:F

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method final getBottomInset()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->c:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->c:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMinOffset()I
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getMinimumHeight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPendingAction()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->d:I

    return v0
.end method

.method public getScrollRange()I
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 98
    instance-of v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getMinOffset()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final getTopInset()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->c:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->c:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setHeaderTop(I)V
    .locals 3

    .line 92
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->b:I

    const-string v0, "ParallaxHeaderLayout"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeaderTop. top - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnParallaxHeaderScrollListener(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->a:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;

    return-void
.end method
