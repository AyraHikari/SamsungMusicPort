.class public final Landroid/support/v7/graphics/Palette$Swatch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Swatch"
.end annotation


# instance fields
.field private final mBlue:I

.field private mBodyTextColor:I

.field private mGeneratedTextColors:Z

.field private final mGreen:I

.field private mHsl:[F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPopulation:I

.field private final mRed:I

.field private final mRgb:I

.field private mTitleTextColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRed:I

    .line 456
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mGreen:I

    .line 457
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mBlue:I

    .line 458
    iput p1, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    .line 459
    iput p2, p0, Landroid/support/v7/graphics/Palette$Swatch;->mPopulation:I

    return-void
.end method

.method constructor <init>(IIII)V
    .locals 0

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput p1, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRed:I

    .line 464
    iput p2, p0, Landroid/support/v7/graphics/Palette$Swatch;->mGreen:I

    .line 465
    iput p3, p0, Landroid/support/v7/graphics/Palette$Swatch;->mBlue:I

    .line 466
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    .line 467
    iput p4, p0, Landroid/support/v7/graphics/Palette$Swatch;->mPopulation:I

    return-void
.end method

.method constructor <init>([FI)V
    .locals 1

    .line 471
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    .line 472
    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Swatch;->mHsl:[F

    return-void
.end method

.method private ensureTextColorsGenerated()V
    .locals 8

    .line 526
    iget-boolean v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    if-nez v0, :cond_4

    .line 528
    iget v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    const/high16 v1, 0x40900000    # 4.5f

    const/4 v2, -0x1

    invoke-static {v2, v0, v1}, Landroid/support/v4/graphics/ColorUtils;->calculateMinimumAlpha(IIF)I

    move-result v0

    .line 530
    iget v3, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v2, v3, v4}, Landroid/support/v4/graphics/ColorUtils;->calculateMinimumAlpha(IIF)I

    move-result v3

    const/4 v5, 0x1

    if-eq v0, v2, :cond_0

    if-eq v3, v2, :cond_0

    .line 535
    invoke-static {v2, v0}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mBodyTextColor:I

    .line 536
    invoke-static {v2, v3}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mTitleTextColor:I

    .line 537
    iput-boolean v5, p0, Landroid/support/v7/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    return-void

    .line 541
    :cond_0
    iget v6, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    const/high16 v7, -0x1000000

    invoke-static {v7, v6, v1}, Landroid/support/v4/graphics/ColorUtils;->calculateMinimumAlpha(IIF)I

    move-result v1

    .line 543
    iget v6, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    invoke-static {v7, v6, v4}, Landroid/support/v4/graphics/ColorUtils;->calculateMinimumAlpha(IIF)I

    move-result v4

    if-eq v1, v2, :cond_1

    if-eq v4, v2, :cond_1

    .line 548
    invoke-static {v7, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mBodyTextColor:I

    .line 549
    invoke-static {v7, v4}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mTitleTextColor:I

    .line 550
    iput-boolean v5, p0, Landroid/support/v7/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    return-void

    :cond_1
    if-eq v0, v2, :cond_2

    .line 557
    invoke-static {v2, v0}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    goto :goto_0

    .line 558
    :cond_2
    invoke-static {v7, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mBodyTextColor:I

    if-eq v3, v2, :cond_3

    .line 560
    invoke-static {v2, v3}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    goto :goto_1

    .line 561
    :cond_3
    invoke-static {v7, v4}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    :goto_1
    iput v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mTitleTextColor:I

    .line 562
    iput-boolean v5, p0, Landroid/support/v7/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 583
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 587
    :cond_1
    check-cast p1, Landroid/support/v7/graphics/Palette$Swatch;

    .line 588
    iget v2, p0, Landroid/support/v7/graphics/Palette$Swatch;->mPopulation:I

    iget v3, p1, Landroid/support/v7/graphics/Palette$Swatch;->mPopulation:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    iget p1, p1, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBodyTextColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 521
    invoke-direct {p0}, Landroid/support/v7/graphics/Palette$Swatch;->ensureTextColorsGenerated()V

    .line 522
    iget v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mBodyTextColor:I

    return v0
.end method

.method public getHsl()[F
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 491
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mHsl:[F

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 492
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mHsl:[F

    .line 494
    :cond_0
    iget v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRed:I

    iget v1, p0, Landroid/support/v7/graphics/Palette$Swatch;->mGreen:I

    iget v2, p0, Landroid/support/v7/graphics/Palette$Swatch;->mBlue:I

    iget-object v3, p0, Landroid/support/v7/graphics/Palette$Swatch;->mHsl:[F

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 495
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mHsl:[F

    return-object v0
.end method

.method public getPopulation()I
    .locals 1

    .line 502
    iget v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mPopulation:I

    return v0
.end method

.method public getRgb()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 480
    iget v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    return v0
.end method

.method public getTitleTextColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 511
    invoke-direct {p0}, Landroid/support/v7/graphics/Palette$Swatch;->ensureTextColorsGenerated()V

    .line 512
    iget v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mTitleTextColor:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 593
    iget v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/v7/graphics/Palette$Swatch;->mPopulation:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " [RGB: #"

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " [HSL: "

    .line 570
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " [Population: "

    .line 571
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/graphics/Palette$Swatch;->mPopulation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " [Title Text: #"

    .line 572
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette$Swatch;->getTitleTextColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " [Body Text: #"

    .line 574
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette$Swatch;->getBodyTextColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
