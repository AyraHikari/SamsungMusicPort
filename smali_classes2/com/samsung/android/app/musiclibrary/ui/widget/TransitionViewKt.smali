.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;IILandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionViewKt;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private static final b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;IILandroid/widget/ImageView$ScaleType;)V
    .locals 5

    .line 269
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 270
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    if-ltz v1, :cond_2

    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-lez v0, :cond_a

    if-lez v1, :cond_a

    .line 274
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne v4, p4, :cond_3

    goto/16 :goto_4

    .line 283
    :cond_3
    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v3, :cond_4

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_5

    .line 288
    :cond_4
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v2, 0x3f000000    # 0.5f

    if-ne p0, p4, :cond_5

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    sub-int/2addr p2, v0

    int-to-float p0, p2

    mul-float p0, p0, v2

    .line 291
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    sub-int/2addr p3, v1

    int-to-float p2, p3

    mul-float p2, p2, v2

    .line 292
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    .line 291
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/16 :goto_5

    .line 293
    :cond_5
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p0, p4, :cond_7

    .line 294
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    mul-int p0, v0, p3

    mul-int p4, p2, v1

    const/4 v3, 0x0

    if-le p0, p4, :cond_6

    int-to-float p0, p3

    int-to-float p3, v1

    div-float/2addr p0, p3

    int-to-float p2, p2

    int-to-float p3, v0

    mul-float p3, p3, p0

    sub-float/2addr p2, p3

    mul-float p2, p2, v2

    goto :goto_2

    :cond_6
    int-to-float p0, p2

    int-to-float p2, v0

    div-float/2addr p0, p2

    int-to-float p2, p3

    int-to-float p3, v1

    mul-float p3, p3, p0

    sub-float/2addr p2, p3

    mul-float p2, p2, v2

    move v3, p2

    const/4 p2, 0x0

    .line 308
    :goto_2
    invoke-virtual {p1, p0, p0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 309
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    .line 310
    :cond_7
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne p0, p4, :cond_9

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    if-gt v0, p2, :cond_8

    if-gt v1, p3, :cond_8

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_8
    int-to-float p0, p2

    int-to-float p4, v0

    div-float/2addr p0, p4

    int-to-float p4, p3

    int-to-float v3, v1

    div-float/2addr p4, v3

    .line 315
    invoke-static {p0, p4}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :goto_3
    int-to-float p2, p2

    int-to-float p4, v0

    mul-float p4, p4, p0

    sub-float/2addr p2, p4

    mul-float p2, p2, v2

    .line 321
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, v1

    mul-float p4, p4, p0

    sub-float/2addr p3, p4

    mul-float p3, p3, v2

    .line 322
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p3, p3

    .line 324
    invoke-virtual {p1, p0, p0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 325
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    .line 327
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Scale type not supported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 278
    :cond_a
    :goto_4
    invoke-virtual {p0, v2, v2, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    :goto_5
    return-void
.end method
