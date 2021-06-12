.class Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vbox"
.end annotation


# instance fields
.field private mLowerIndex:I

.field private mMaxBlue:I

.field private mMaxGreen:I

.field private mMaxRed:I

.field private mMinBlue:I

.field private mMinGreen:I

.field private mMinRed:I

.field private mPopulation:I

.field private mUpperIndex:I

.field final synthetic this$0:Landroid/support/v7/graphics/ColorCutQuantizer;


# direct methods
.method constructor <init>(Landroid/support/v7/graphics/ColorCutQuantizer;II)V
    .locals 0

    .line 225
    iput-object p1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 227
    iput p3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 228
    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    return-void
.end method


# virtual methods
.method final canSplit()Z
    .locals 2

    .line 237
    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getColorCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method final findSplitPoint()I
    .locals 6

    .line 343
    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getLongestColorDimension()I

    move-result v0

    .line 344
    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v1, v1, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    .line 345
    iget-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v2, v2, Landroid/support/v7/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 350
    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v1, v0, v3, v4}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    .line 353
    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->sort([III)V

    .line 356
    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v1, v0, v3, v4}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    .line 358
    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mPopulation:I

    div-int/lit8 v0, v0, 0x2

    .line 359
    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v3, v5, :cond_1

    .line 360
    aget v5, v1, v3

    aget v5, v2, v5

    add-int/2addr v4, v5

    if-lt v4, v0, :cond_0

    .line 364
    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    :cond_1
    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    return v0
.end method

.method final fitBox()V
    .locals 13

    .line 248
    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v0, v0, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    .line 249
    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v1, v1, Landroid/support/v7/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 258
    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/high16 v9, -0x80000000

    :goto_0
    iget v10, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v2, v10, :cond_6

    .line 259
    aget v10, v0, v2

    .line 260
    aget v11, v1, v10

    add-int/2addr v5, v11

    .line 262
    invoke-static {v10}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v11

    .line 263
    invoke-static {v10}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v12

    .line 264
    invoke-static {v10}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v10

    if-le v11, v4, :cond_0

    move v4, v11

    :cond_0
    if-ge v11, v3, :cond_1

    move v3, v11

    :cond_1
    if-le v12, v7, :cond_2

    move v7, v12

    :cond_2
    if-ge v12, v6, :cond_3

    move v6, v12

    :cond_3
    if-le v10, v9, :cond_4

    move v9, v10

    :cond_4
    if-ge v10, v8, :cond_5

    move v8, v10

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    :cond_6
    iput v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 286
    iput v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 287
    iput v6, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 288
    iput v7, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 289
    iput v8, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 290
    iput v9, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 291
    iput v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mPopulation:I

    return-void
.end method

.method final getAverageColor()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 10

    .line 375
    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v0, v0, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    .line 376
    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v1, v1, Landroid/support/v7/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 382
    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget v7, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v2, v7, :cond_0

    .line 383
    aget v7, v0, v2

    .line 384
    aget v8, v1, v7

    add-int/2addr v3, v8

    .line 387
    invoke-static {v7}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v9

    mul-int v9, v9, v8

    add-int/2addr v4, v9

    .line 388
    invoke-static {v7}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v9

    mul-int v9, v9, v8

    add-int/2addr v5, v9

    .line 389
    invoke-static {v7}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v7

    mul-int v8, v8, v7

    add-int/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-float v0, v4

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 392
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v2, v5

    div-float/2addr v2, v1

    .line 393
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v4, v6

    div-float/2addr v4, v1

    .line 394
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 396
    new-instance v4, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {v0, v2, v1}, Landroid/support/v7/graphics/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result v0

    invoke-direct {v4, v0, v3}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    return-object v4
.end method

.method final getColorCount()I
    .locals 2

    .line 241
    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final getLongestColorDimension()I
    .locals 4

    .line 320
    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    .line 321
    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    .line 322
    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v2, v3

    if-lt v0, v1, :cond_0

    if-lt v0, v2, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    if-lt v1, v0, :cond_1

    if-lt v1, v2, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method final getVolume()I
    .locals 3

    .line 232
    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    return v0
.end method

.method final splitBox()Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    .locals 5

    .line 300
    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->findSplitPoint()I

    move-result v0

    .line 307
    new-instance v1, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;-><init>(Landroid/support/v7/graphics/ColorCutQuantizer;II)V

    .line 310
    iput v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 311
    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    return-object v1

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not split a box with only 1 color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
