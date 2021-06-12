.class public Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gradient_color_extractor/CallGradient_V2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradientView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;
    }
.end annotation


# instance fields
.field a:Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

.field b:Landroid/graphics/ColorFilter;

.field c:Landroid/graphics/ColorFilter;

.field d:Landroid/graphics/ColorFilter;

.field e:I

.field f:I

.field g:I

.field h:Landroid/animation/ValueAnimator;

.field i:Landroid/animation/ValueAnimator;

.field j:I

.field k:I

.field l:I

.field m:Z

.field n:Z

.field o:Z

.field p:Landroid/graphics/Bitmap;

.field q:Landroid/graphics/Bitmap;

.field r:Landroid/graphics/Bitmap;

.field s:Z

.field t:F

.field u:F

.field v:I

.field w:F

.field x:Landroid/graphics/Paint;

.field y:Landroid/graphics/Paint;


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->v:I

    return v0
.end method

.method public getAnimationState()Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->a:Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    return-object v0
.end method

.method public getColors()[I
    .locals 3

    const/4 v0, 0x3

    .line 330
    new-array v0, v0, [I

    iget v1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->e:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->f:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->g:I

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public getGradientScale()F
    .locals 1

    .line 352
    iget v0, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->w:F

    return v0
.end method

.method public getGradientVisibility()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->n:Z

    return v0
.end method

.method public getIgnoranceAnimation()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->o:Z

    return v0
.end method

.method public getRegionRectVisibility()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->m:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 529
    invoke-virtual {p0}, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 379
    iget v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->k:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    .line 380
    iget v3, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    iget v4, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 381
    iget v4, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->j:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->w:F

    mul-float v4, v4, v5

    .line 388
    iget v5, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->j:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    const v1, 0x3d4ccccd    # 0.05f

    const/high16 v6, 0x3e800000    # 0.25f

    const v7, 0x3f666666    # 0.9f

    const v8, 0x3e19999a    # 0.15f

    const v9, 0x3f4ccccd    # 0.8f

    cmpg-float v12, v5, v2

    if-gez v12, :cond_0

    const/high16 v13, 0x3e800000    # 0.25f

    const/high16 v14, 0x3e800000    # 0.25f

    const v15, 0x3d4ccccd    # 0.05f

    const/high16 v16, 0x3f800000    # 1.0f

    const v17, 0x3d4ccccd    # 0.05f

    goto :goto_0

    :cond_0
    float-to-double v5, v5

    const-wide v13, 0x3ff5555555555555L    # 1.3333333333333333

    cmpg-double v1, v5, v13

    if-gez v1, :cond_1

    const v13, 0x3f4ccccd    # 0.8f

    const v14, 0x3e19999a    # 0.15f

    const/high16 v15, 0x3f000000    # 0.5f

    const v16, 0x3f666666    # 0.9f

    const/high16 v17, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const-wide v13, 0x3ff89d89d89d89d8L    # 1.5384615384615383

    cmpg-double v1, v5, v13

    if-gez v1, :cond_2

    const v1, 0x3f266666    # 0.65f

    const v5, 0x3f266666    # 0.65f

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3e19999a    # 0.15f

    const v15, 0x3f266666    # 0.65f

    const v16, 0x3f666666    # 0.9f

    const v17, 0x3f266666    # 0.65f

    goto :goto_0

    :cond_2
    const-wide v13, 0x3ffd1745d1745d17L    # 1.8181818181818181

    cmpg-double v1, v5, v13

    if-gez v1, :cond_3

    const v1, 0x3f99999a    # 1.2f

    const v13, 0x3f99999a    # 1.2f

    const v14, 0x3e19999a    # 0.15f

    const v15, 0x3f4ccccd    # 0.8f

    const v16, 0x3f666666    # 0.9f

    const v17, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_3
    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v13, 0x3fc00000    # 1.5f

    const v14, 0x3e19999a    # 0.15f

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f666666    # 0.9f

    const/high16 v17, 0x3f800000    # 1.0f

    :goto_0
    const v1, 0x3f19999a    # 0.6f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v8, 0x0

    if-gez v12, :cond_4

    const v6, 0x40333333    # 2.8f

    mul-float v6, v6, v4

    mul-float v4, v4, v5

    .line 419
    iget v5, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->u:F

    move v7, v4

    move v12, v6

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const v18, 0x3f19999a    # 0.6f

    const v19, 0x3f4ccccd    # 0.8f

    goto :goto_1

    :cond_4
    mul-float v6, v4, v5

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v4, v4, v1

    neg-float v1, v6

    .line 427
    iget v7, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    int-to-float v7, v7

    mul-float v1, v1, v7

    neg-float v7, v4

    .line 428
    iget v9, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    int-to-float v9, v9

    mul-float v9, v9, v7

    .line 429
    iget v12, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    int-to-float v12, v12

    mul-float v7, v7, v12

    .line 430
    iget v12, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->u:F

    mul-float v5, v5, v12

    move v12, v6

    move v6, v9

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move v9, v1

    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v44, v7

    move v7, v4

    move/from16 v4, v44

    .line 438
    :goto_1
    iget v11, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->k:I

    int-to-float v11, v11

    mul-float v3, v3, v12

    div-float/2addr v11, v3

    .line 439
    invoke-static {}, Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;->a()Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;

    move-result-object v3

    iget-object v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move/from16 v22, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v2, v8, v4, v4}, Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;->a(FFFF)F

    move-result v2

    .line 441
    iget v3, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->t:F

    sub-float v21, v2, v4

    mul-float v3, v3, v21

    .line 442
    invoke-static {}, Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;->a()Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;

    move-result-object v4

    iget-object v8, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move/from16 v25, v2

    move/from16 v26, v6

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v8, v2, v6, v6}, Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;->a(FFFF)F

    move-result v4

    .line 445
    iget-boolean v8, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->o:Z

    if-nez v8, :cond_5

    .line 446
    iget v8, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->k:I

    int-to-float v8, v8

    neg-float v5, v5

    mul-float v5, v5, v4

    add-float/2addr v5, v3

    mul-float v8, v8, v5

    mul-float v11, v11, v2

    add-float v2, v11, v6

    move v11, v8

    move v8, v2

    goto :goto_2

    :cond_5
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    .line 456
    :goto_2
    iget v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->j:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v6, v2, v3

    .line 459
    iget-object v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->y:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 460
    iget-object v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->y:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 461
    iget-object v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->y:Landroid/graphics/Paint;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 464
    iget-object v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->x:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->d:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 465
    iget-object v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->x:Landroid/graphics/Paint;

    mul-float v1, v1, v25

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v1, v1, v21

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 466
    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->y:Landroid/graphics/Paint;

    iget v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->g:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 467
    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->y:Landroid/graphics/Paint;

    mul-float v2, v25, v21

    float-to-int v5, v2

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v23, 0x0

    const/4 v4, 0x0

    :goto_3
    const/4 v3, 0x4

    if-ge v4, v3, :cond_8

    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x0

    .line 470
    invoke-virtual {v10, v3, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 471
    invoke-virtual {v10, v8, v8, v6, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 472
    invoke-virtual {v10, v3, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 473
    iget v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->j:I

    int-to-float v1, v1

    const/high16 v20, 0x3f000000    # 0.5f

    mul-float v1, v1, v20

    iget v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->k:I

    int-to-float v2, v2

    mul-float v2, v2, v13

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 474
    invoke-virtual {v10, v12, v12, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    mul-int/lit8 v1, v4, 0x5a

    int-to-float v1, v1

    .line 475
    invoke-virtual {v10, v1, v3, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 476
    iget-boolean v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->n:Z

    if-eqz v1, :cond_6

    .line 477
    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->p:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->x:Landroid/graphics/Paint;

    invoke-virtual {v10, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 478
    :cond_6
    iget-boolean v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->m:Z

    if-eqz v1, :cond_7

    .line 479
    iget v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    neg-int v1, v1

    int-to-float v2, v1

    iget v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    int-to-float v3, v3

    move/from16 v28, v1

    iget v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    int-to-float v1, v1

    const/high16 v24, 0x43870000    # 270.0f

    const/high16 v29, 0x42b40000    # 90.0f

    const/16 v30, 0x1

    move/from16 v31, v8

    iget-object v8, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->y:Landroid/graphics/Paint;

    move/from16 v32, v1

    move-object/from16 v1, p1

    move/from16 v27, v3

    const/16 v33, 0x0

    move/from16 v3, v28

    move/from16 v34, v22

    move/from16 v22, v4

    move/from16 v4, v27

    move/from16 v35, v5

    move/from16 v5, v32

    move/from16 v36, v6

    move/from16 v37, v26

    move/from16 v6, v24

    move/from16 v38, v7

    move/from16 v7, v29

    move-object/from16 v24, v8

    move/from16 v39, v31

    move/from16 v8, v30

    move/from16 v26, v9

    move-object/from16 v9, v24

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_7
    move/from16 v35, v5

    move/from16 v36, v6

    move/from16 v38, v7

    move/from16 v39, v8

    move/from16 v34, v22

    move/from16 v37, v26

    move/from16 v22, v4

    move/from16 v26, v9

    .line 480
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v4, v22, 0x1

    move/from16 v9, v26

    move/from16 v22, v34

    move/from16 v5, v35

    move/from16 v6, v36

    move/from16 v26, v37

    move/from16 v7, v38

    move/from16 v8, v39

    goto/16 :goto_3

    :cond_8
    move/from16 v35, v5

    move/from16 v36, v6

    move/from16 v38, v7

    move/from16 v39, v8

    move/from16 v34, v22

    move/from16 v37, v26

    .line 483
    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->x:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->c:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 484
    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->x:Landroid/graphics/Paint;

    mul-float v18, v18, v25

    mul-float v2, v18, v21

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 485
    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->y:Landroid/graphics/Paint;

    iget v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->f:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 486
    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->y:Landroid/graphics/Paint;

    move/from16 v12, v35

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v3, :cond_b

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v9, 0x0

    .line 489
    invoke-virtual {v10, v9, v11}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v8, v36

    move/from16 v7, v39

    .line 490
    invoke-virtual {v10, v7, v7, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    move/from16 v6, v37

    .line 491
    invoke-virtual {v10, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 492
    iget v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->j:I

    int-to-float v1, v1

    mul-float v1, v1, v14

    iget v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->k:I

    int-to-float v2, v2

    mul-float v2, v2, v15

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v5, v38

    .line 493
    invoke-virtual {v10, v5, v5, v9, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    mul-int/lit8 v1, v13, 0x5a

    int-to-float v1, v1

    .line 494
    invoke-virtual {v10, v1, v9, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 496
    iget-boolean v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->n:Z

    if-eqz v1, :cond_9

    .line 497
    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->p:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->x:Landroid/graphics/Paint;

    invoke-virtual {v10, v1, v9, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 498
    :cond_9
    iget-boolean v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->m:Z

    if-eqz v1, :cond_a

    .line 499
    iget v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    neg-int v1, v1

    int-to-float v2, v1

    iget v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    neg-int v1, v1

    int-to-float v4, v1

    iget v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    int-to-float v1, v1

    iget v3, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    int-to-float v3, v3

    const/high16 v18, 0x43870000    # 270.0f

    const/high16 v20, 0x42b40000    # 90.0f

    const/16 v22, 0x1

    iget-object v9, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->y:Landroid/graphics/Paint;

    move/from16 v24, v1

    move-object/from16 v1, p1

    move/from16 v26, v3

    move v3, v4

    move/from16 v4, v24

    move/from16 v40, v5

    move/from16 v5, v26

    move/from16 v24, v6

    move/from16 v6, v18

    move/from16 v41, v7

    move/from16 v7, v20

    move/from16 v42, v8

    move/from16 v8, v22

    move/from16 v43, v14

    const/4 v14, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_a
    move/from16 v40, v5

    move/from16 v24, v6

    move/from16 v41, v7

    move/from16 v42, v8

    move/from16 v43, v14

    const/4 v14, 0x0

    .line 501
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v13, v13, 0x1

    move/from16 v37, v24

    move/from16 v38, v40

    move/from16 v39, v41

    move/from16 v36, v42

    move/from16 v14, v43

    const/4 v3, 0x4

    goto/16 :goto_5

    :cond_b
    move/from16 v42, v36

    move/from16 v40, v38

    move/from16 v41, v39

    const/4 v14, 0x0

    .line 503
    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->x:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->b:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 504
    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->x:Landroid/graphics/Paint;

    mul-float v19, v19, v25

    mul-float v2, v19, v21

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 505
    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->y:Landroid/graphics/Paint;

    iget v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 506
    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->y:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v12, 0x0

    const/4 v13, 0x4

    :goto_7
    if-ge v12, v13, :cond_e

    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 509
    invoke-virtual {v10, v14, v11}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v9, v41

    move/from16 v15, v42

    .line 510
    invoke-virtual {v10, v9, v9, v15, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    move/from16 v8, v34

    .line 511
    invoke-virtual {v10, v14, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 512
    iget v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->j:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    iget v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->k:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v7, v40

    .line 513
    invoke-virtual {v10, v7, v7, v14, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    mul-int/lit8 v1, v12, 0x5a

    int-to-float v1, v1

    .line 514
    invoke-virtual {v10, v1, v14, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 516
    iget-boolean v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->n:Z

    if-eqz v1, :cond_c

    .line 517
    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->p:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->x:Landroid/graphics/Paint;

    invoke-virtual {v10, v1, v14, v14, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 518
    :cond_c
    iget-boolean v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->m:Z

    if-eqz v1, :cond_d

    .line 519
    iget v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    neg-int v1, v1

    int-to-float v2, v1

    iget v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    neg-int v1, v1

    int-to-float v3, v1

    iget v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    int-to-float v4, v1

    iget v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->l:I

    int-to-float v5, v1

    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v18, 0x42b40000    # 90.0f

    const/16 v19, 0x1

    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->y:Landroid/graphics/Paint;

    move-object/from16 v20, v1

    move-object/from16 v1, p1

    move/from16 v21, v7

    move/from16 v7, v18

    move/from16 v18, v8

    move/from16 v8, v19

    move/from16 v19, v9

    move-object/from16 v9, v20

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_d
    move/from16 v21, v7

    move/from16 v18, v8

    move/from16 v19, v9

    .line 520
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v12, v12, 0x1

    move/from16 v42, v15

    move/from16 v34, v18

    move/from16 v41, v19

    move/from16 v40, v21

    goto :goto_7

    .line 522
    :cond_e
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 524
    iget-object v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->a:Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;->None:Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    if-eq v1, v2, :cond_f

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->invalidate()V

    :cond_f
    return-void

    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 371
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 372
    iput p1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->j:I

    .line 373
    iput p2, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->k:I

    return-void
.end method

.method public setGradientDitheringMode(Z)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 335
    iput-boolean p1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->s:Z

    .line 336
    iget-boolean p1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->s:Z

    if-eqz p1, :cond_0

    .line 337
    iget-object p1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->q:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->p:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->r:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->p:Landroid/graphics/Bitmap;

    .line 340
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setGradientScale(F)V
    .locals 0

    .line 349
    iput p1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->w:F

    return-void
.end method

.method public setGradientVisibility(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->n:Z

    return-void
.end method

.method public setIgnoranceAnimation(Z)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->o:Z

    return-void
.end method

.method public setRadialBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->p:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRegionRectVisibility(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;->m:Z

    return-void
.end method
