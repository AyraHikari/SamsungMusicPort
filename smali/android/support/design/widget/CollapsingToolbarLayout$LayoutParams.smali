.class public Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams$CollapseMode;
    }
.end annotation


# static fields
.field public static final COLLAPSE_MODE_OFF:I = 0x0

.field public static final COLLAPSE_MODE_PARALLAX:I = 0x2

.field public static final COLLAPSE_MODE_PIN:I = 0x1

.field private static final DEFAULT_PARALLAX_MULTIPLIER:F = 0.5f


# instance fields
.field private isTitleCustom:Z

.field mCollapseMode:I

.field mParallaxMult:F


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1630
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 1607
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 1608
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1634
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 p1, 0x0

    .line 1607
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 1608
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1614
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 1607
    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1608
    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    .line 1616
    sget-object v2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1618
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_Layout_layout_collapseMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    .line 1621
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->setParallaxMultiplier(F)V

    .line 1624
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_Layout_layout_isTitleCustom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->isTitleCustom:Z

    .line 1626
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1638
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 1607
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 1608
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 1642
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 1607
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 1608
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 1648
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    const/4 p1, 0x0

    .line 1607
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 1608
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return-void
.end method


# virtual methods
.method public getCollapseMode()I
    .locals 1

    .line 1669
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    return v0
.end method

.method public getParallaxMultiplier()F
    .locals 1

    .line 1709
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return v0
.end method

.method public getTitleIsCustom()Z
    .locals 1

    .line 1685
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->isTitleCustom:Z

    return v0
.end method

.method public setCollapseMode(I)V
    .locals 0

    .line 1658
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    return-void
.end method

.method public setParallaxMultiplier(F)V
    .locals 0

    .line 1699
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return-void
.end method

.method public setTitleIsCustom(Ljava/lang/Boolean;)V
    .locals 0

    .line 1678
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->isTitleCustom:Z

    return-void
.end method
