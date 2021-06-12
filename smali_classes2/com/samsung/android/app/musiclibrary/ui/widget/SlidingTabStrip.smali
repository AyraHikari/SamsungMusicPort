.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:F

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->d:Z

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->setWillNotDraw(Z)V

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$drawable;->tab_indicator_selected:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a(IF)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->b:I

    .line 70
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->c:F

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getHeight()I

    move-result v0

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 81
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->b:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 85
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->c:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->b:I

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 87
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 88
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->c:F

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->c:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    int-to-float v2, v2

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 90
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->c:F

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v4, v3

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->c:F

    sub-float/2addr v6, v3

    int-to-float v1, v1

    mul-float v6, v6, v1

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 94
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->d:Z

    if-eqz v3, :cond_1

    .line 95
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->a:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->a:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public setIndicatorEnabled(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->d:Z

    return-void
.end method
