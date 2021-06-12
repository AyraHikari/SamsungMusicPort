.class Landroid/support/v7/widget/SeslColorPicker$PickedColor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PickedColor"
.end annotation


# instance fields
.field private mAlpha:I

.field private mColor:I

.field private mHsv:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 491
    iput v0, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mColor:I

    const/16 v0, 0xff

    .line 492
    iput v0, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mAlpha:I

    const/4 v0, 0x3

    .line 493
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mHsv:[F

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    .line 532
    iget v0, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mAlpha:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 506
    iget v0, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mColor:I

    return v0
.end method

.method public getV()F
    .locals 2

    .line 528
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 523
    iput p1, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 524
    iget p1, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mAlpha:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mColor:I

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 500
    iput p1, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mColor:I

    .line 501
    iget p1, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 502
    iget p1, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mColor:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    return-void
.end method

.method public setHS(FF)V
    .locals 2

    .line 510
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 511
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v0, 0x1

    aput p2, p1, v0

    .line 512
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 p2, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p1, p2

    .line 514
    iget p1, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mAlpha:I

    iget-object p2, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mColor:I

    return-void
.end method

.method public setV(F)V
    .locals 2

    .line 518
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 519
    iget p1, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mAlpha:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->mColor:I

    return-void
.end method
