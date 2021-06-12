.class Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScrollPreview"
.end annotation


# instance fields
.field private mIsOpen:Z

.field private mPreviewCenterMargin:F

.field private mPreviewCenterX:F

.field private mPreviewCenterY:F

.field private mPreviewRadius:F

.field private mPreviewText:Ljava/lang/String;

.field private mShapePaint:Landroid/graphics/Paint;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I

.field private mTextWidhtLimit:I

.field final synthetic this$0:Landroid/support/v7/widget/SeslIndexScrollView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslIndexScrollView;Landroid/content/Context;)V
    .locals 0

    .line 1753
    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    .line 1754
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1747
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    .line 1755
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;)V
    .locals 0

    .line 1730
    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->fadeOutAnimation()V

    return-void
.end method

.method private fadeOutAnimation()V
    .locals 1

    .line 1859
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 1860
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->startAnimation()V

    const/4 v0, 0x0

    .line 1861
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 1763
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1765
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    .line 1766
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1767
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1769
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_index_scroll_preview_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextSize:I

    .line 1770
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_index_scroll_preview_text_width_limit:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextWidhtLimit:I

    .line 1772
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    .line 1773
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1774
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v1}, Landroid/support/v7/widget/SeslIndexScrollView;->access$500(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1775
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1776
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1777
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    sget v1, Landroid/support/v7/appcompat/R$color;->sesl_index_scroll_preview_text_color_light:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1780
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextBounds:Landroid/graphics/Rect;

    .line 1782
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_index_scroll_preview_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewRadius:F

    .line 1783
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_index_scroll_preview_margin_center:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterMargin:F

    const/4 p1, 0x0

    .line 1785
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1849
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslIndexScrollView;->access$1300(Landroid/support/v7/widget/SeslIndexScrollView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1850
    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslIndexScrollView;->access$1400(Landroid/support/v7/widget/SeslIndexScrollView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1852
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$1400(Landroid/support/v7/widget/SeslIndexScrollView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1854
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->fadeOutAnimation()V

    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1889
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1890
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 1891
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterX:F

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterY:F

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewRadius:F

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1893
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1894
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterY:F

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 1895
    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewText:Ljava/lang/String;

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterX:F

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public open(FLjava/lang/String;)V
    .locals 2

    .line 1828
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextSize:I

    .line 1829
    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterY:F

    .line 1830
    iput-object p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewText:Ljava/lang/String;

    .line 1831
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1835
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextWidhtLimit:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    .line 1836
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 1839
    :cond_0
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    if-nez p1, :cond_1

    .line 1840
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->startAnimation()V

    const/4 p1, 0x1

    .line 1841
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1811
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setLayout(IIII)V
    .locals 0

    .line 1797
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->layout(IIII)V

    .line 1798
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {p1}, Landroid/support/v7/widget/SeslIndexScrollView;->access$1200(Landroid/support/v7/widget/SeslIndexScrollView;)I

    move-result p1

    if-nez p1, :cond_0

    .line 1799
    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterMargin:F

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterX:F

    goto :goto_0

    :cond_0
    int-to-float p1, p3

    .line 1801
    iget p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterMargin:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterX:F

    :goto_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1819
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public startAnimation()V
    .locals 3

    .line 1871
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 1872
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$600(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v0

    const-string v2, "alpha"

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 1874
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$600(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v0

    const-string v2, "alpha"

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0xa7

    .line 1877
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1878
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1879
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1880
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
