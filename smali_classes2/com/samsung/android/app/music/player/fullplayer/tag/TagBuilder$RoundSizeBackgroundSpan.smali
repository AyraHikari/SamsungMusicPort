.class Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoundSizeBackgroundSpan"
.end annotation


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Paint;

.field private final c:I

.field private final d:I

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:Ljava/lang/CharSequence;

.field private final j:I

.field private final k:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;IIIIIIIII)V
    .locals 1

    .line 367
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 344
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->a:Landroid/graphics/RectF;

    .line 368
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->i:Ljava/lang/CharSequence;

    .line 369
    iput p3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->c:I

    .line 370
    iput p4, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->d:I

    int-to-float p1, p5

    .line 372
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->e:F

    int-to-float p1, p6

    .line 373
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->f:F

    int-to-float p1, p7

    .line 374
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->g:F

    int-to-float p1, p8

    .line 375
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->h:F

    .line 376
    iput p9, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->j:I

    .line 377
    iput p10, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->k:I

    .line 379
    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->b:Landroid/graphics/Paint;

    .line 380
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFF)V
    .locals 1

    .line 432
    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p3

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 433
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p5

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 434
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p4

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 435
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p6

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p7, p7, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 437
    iget p1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p3

    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 438
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p5

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 439
    iget p1, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p4

    iput p1, p2, Landroid/graphics/RectF;->left:F

    .line 440
    iget p1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p6

    iput p1, p2, Landroid/graphics/RectF;->right:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 16
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v8, p0

    move/from16 v9, p5

    move/from16 v0, p6

    .line 405
    iget-object v1, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->i:Ljava/lang/CharSequence;

    iget-object v2, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->i:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v10, p9

    invoke-virtual {v10, v1, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    .line 406
    iget v2, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->c:I

    int-to-float v2, v2

    iget v3, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->j:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->k:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 408
    iget v3, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->j:I

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v3, :cond_0

    sub-float v1, v2, v1

    div-float/2addr v1, v4

    :goto_0
    move v11, v1

    goto :goto_1

    :cond_0
    iget v1, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->j:I

    int-to-float v1, v1

    goto :goto_0

    .line 410
    :goto_1
    iget v1, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->d:I

    sub-int v3, p8, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 413
    iget-object v3, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->a:Landroid/graphics/RectF;

    iput v9, v3, Landroid/graphics/RectF;->left:F

    .line 414
    iget-object v3, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->a:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v3, Landroid/graphics/RectF;->top:F

    .line 415
    iget-object v3, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->a:Landroid/graphics/RectF;

    add-float/2addr v2, v9

    iput v2, v3, Landroid/graphics/RectF;->right:F

    .line 416
    iget-object v2, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->a:Landroid/graphics/RectF;

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 418
    iget v0, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->e:F

    iget v1, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->f:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 419
    iget v0, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->g:F

    iget v1, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->h:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 420
    iget v1, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->e:F

    iget v2, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->g:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 421
    iget v1, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->f:F

    iget v2, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->h:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 423
    iget-object v2, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->a:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    neg-float v14, v0

    neg-float v15, v1

    iget v7, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->e:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v14

    move v6, v15

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFF)V

    .line 424
    iget-object v2, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->a:Landroid/graphics/RectF;

    const/4 v6, 0x0

    iget v7, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->f:F

    move v4, v13

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFF)V

    .line 425
    iget-object v2, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->a:Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v7, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->g:F

    move v3, v12

    move v6, v15

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFF)V

    .line 426
    iget-object v2, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->a:Landroid/graphics/RectF;

    const/4 v6, 0x0

    iget v7, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->h:F

    move v4, v13

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFF)V

    .line 427
    iget-object v0, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->i:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v2, v8, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->i:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-float v3, v9, v11

    move/from16 v4, p7

    int-to-float v4, v4

    move-object/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v4

    move-object/from16 p7, p9

    invoke-virtual/range {p1 .. p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p5, :cond_0

    .line 388
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 390
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int p3, p3

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 391
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-int p3, p3

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 393
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    float-to-int p3, p3

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 394
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-int p3, p3

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 395
    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->leading:F

    float-to-int p2, p2

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 397
    :cond_0
    iget p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->c:I

    int-to-float p2, p2

    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->i:Ljava/lang/CharSequence;

    const/4 p4, 0x0

    iget-object p5, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->i:Ljava/lang/CharSequence;

    .line 398
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p5

    invoke-virtual {p1, p3, p4, p5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    iget p3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->j:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    iget p3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;->k:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    .line 397
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
