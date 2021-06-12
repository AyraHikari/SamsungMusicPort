.class public Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I

.field public weight:F


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1800
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 1780
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    const/4 p1, 0x0

    .line 1801
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 1815
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 1780
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1816
    iput p3, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1786
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 1780
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1787
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_Layout:[I

    .line 1788
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1790
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_Layout_android_layout_weight:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1791
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_Layout_android_layout_gravity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1793
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;)V
    .locals 1

    .line 1840
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, -0x1

    .line 1780
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1842
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1843
    iget p1, p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1823
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 1780
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 1830
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, -0x1

    .line 1780
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    return-void
.end method
