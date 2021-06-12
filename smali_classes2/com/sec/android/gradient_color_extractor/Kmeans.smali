.class public Lcom/sec/android/gradient_color_extractor/Kmeans;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    }
.end annotation


# static fields
.field static m:F = 0.12f

.field static n:F = 0.25f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static a([F[F[F)F
    .locals 5

    const/4 v0, 0x0

    .line 167
    aget v1, p1, v0

    aget v2, p0, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v1, v3, v1

    :cond_0
    div-float/2addr v1, v2

    const/4 v2, 0x1

    .line 173
    aget v3, p1, v2

    aget v4, p0, v2

    sub-float/2addr v3, v4

    const/4 v4, 0x2

    .line 174
    aget p1, p1, v4

    aget p0, p0, v4

    sub-float/2addr p1, p0

    .line 176
    aget p0, p2, v0

    mul-float v1, v1, p0

    .line 177
    aget p0, p2, v2

    mul-float v3, v3, p0

    .line 178
    aget p0, p2, v4

    mul-float p1, p1, p0

    mul-float v1, v1, v1

    mul-float v3, v3, v3

    add-float/2addr v1, v3

    mul-float p1, p1, p1

    add-float/2addr v1, p1

    return v1
.end method

.method static a([FFF)Z
    .locals 2

    const/4 v0, 0x1

    .line 198
    aget v1, p0, v0

    cmpg-float p1, v1, p1

    if-lez p1, :cond_1

    const/4 p1, 0x2

    aget p0, p0, p1

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    .locals 9

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    new-array v0, v0, [I

    .line 58
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 59
    invoke-static {v0, p1}, Lcom/sec/android/gradient_color_extractor/Kmeans;->a([I[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    move-result-object p0

    return-object p0
.end method

.method static a([I[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 64
    array-length v2, v1

    .line 65
    new-array v3, v2, [Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    .line 66
    new-array v4, v2, [I

    .line 67
    new-array v5, v2, [[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x3

    if-ge v7, v2, :cond_0

    .line 69
    aget v9, v1, v7

    aput v9, v4, v7

    .line 70
    new-array v8, v8, [F

    aput-object v8, v5, v7

    .line 71
    aget v8, v4, v7

    aget-object v9, v5, v7

    invoke-static {v8, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 75
    :cond_0
    array-length v1, v0

    new-array v1, v1, [[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 77
    :goto_1
    array-length v10, v0

    if-ge v7, v10, :cond_2

    .line 78
    new-array v10, v8, [F

    aput-object v10, v1, v7

    .line 79
    aget v10, v0, v7

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    if-lez v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    .line 82
    :cond_1
    aget v10, v0, v7

    aget-object v11, v1, v7

    invoke-static {v10, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 85
    :cond_2
    new-array v7, v2, [I

    .line 86
    new-array v10, v2, [[F

    .line 87
    new-array v11, v8, [F

    fill-array-data v11, :array_0

    .line 88
    new-array v8, v8, [F

    fill-array-data v8, :array_1

    .line 90
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Runtime;->totalMemory()J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Runtime;->freeMemory()J

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v2, :cond_3

    .line 94
    aput v6, v7, v12

    const/4 v13, 0x4

    .line 95
    new-array v13, v13, [F

    fill-array-data v13, :array_2

    aput-object v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    .line 99
    :goto_3
    array-length v13, v0

    const/16 v16, 0x1

    if-ge v12, v13, :cond_8

    .line 100
    aget v13, v0, v12

    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    if-lez v13, :cond_7

    .line 104
    aget-object v13, v1, v12

    sget v15, Lcom/sec/android/gradient_color_extractor/Kmeans;->m:F

    sget v6, Lcom/sec/android/gradient_color_extractor/Kmeans;->n:F

    invoke-static {v13, v15, v6}, Lcom/sec/android/gradient_color_extractor/Kmeans;->a([FFF)Z

    move-result v6

    const/4 v13, 0x0

    const/4 v15, 0x0

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    :goto_4
    if-ge v13, v2, :cond_6

    .line 106
    aget-object v14, v5, v13

    move-object/from16 v18, v3

    sget v3, Lcom/sec/android/gradient_color_extractor/Kmeans;->m:F

    move/from16 v19, v9

    sget v9, Lcom/sec/android/gradient_color_extractor/Kmeans;->n:F

    invoke-static {v14, v3, v9}, Lcom/sec/android/gradient_color_extractor/Kmeans;->a([FFF)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v6, :cond_4

    .line 109
    aget-object v3, v1, v12

    aget-object v9, v5, v13

    invoke-static {v3, v9, v11}, Lcom/sec/android/gradient_color_extractor/Kmeans;->a([F[F[F)F

    move-result v3

    cmpg-float v9, v3, v17

    if-gez v9, :cond_5

    goto :goto_5

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v6, :cond_5

    .line 115
    aget-object v3, v1, v12

    aget-object v9, v5, v13

    invoke-static {v3, v9, v8}, Lcom/sec/android/gradient_color_extractor/Kmeans;->a([F[F[F)F

    move-result v3

    cmpg-float v9, v3, v17

    if-gez v9, :cond_5

    :goto_5
    move/from16 v17, v3

    move v15, v13

    :cond_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v18

    move/from16 v9, v19

    goto :goto_4

    :cond_6
    move-object/from16 v18, v3

    move/from16 v19, v9

    .line 122
    aget v3, v7, v15

    .line 123
    aget v6, v7, v15

    add-int/lit8 v6, v6, 0x1

    aput v6, v7, v15

    .line 124
    aget v6, v7, v15

    int-to-float v6, v6

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v14, v9, v6

    .line 125
    aget-object v6, v10, v15

    int-to-float v3, v3

    aget-object v9, v10, v15

    const/4 v13, 0x0

    aget v9, v9, v13

    mul-float v9, v9, v3

    aget v17, v0, v12

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->red(I)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v9, v13

    mul-float v9, v9, v14

    const/4 v13, 0x0

    aput v9, v6, v13

    .line 126
    aget-object v6, v10, v15

    aget-object v9, v10, v15

    aget v9, v9, v16

    mul-float v9, v9, v3

    aget v13, v0, v12

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v9, v13

    mul-float v9, v9, v14

    aput v9, v6, v16

    .line 127
    aget-object v6, v10, v15

    aget-object v9, v10, v15

    const/4 v13, 0x2

    aget v9, v9, v13

    mul-float v3, v3, v9

    aget v9, v0, v12

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v3, v9

    mul-float v3, v3, v14

    aput v3, v6, v13

    goto :goto_6

    :cond_7
    move-object/from16 v18, v3

    move/from16 v19, v9

    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, v18

    move/from16 v9, v19

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_8
    move-object/from16 v18, v3

    move/from16 v19, v9

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_9

    .line 136
    aget-object v1, v10, v0

    const/4 v13, 0x0

    aget v1, v1, v13

    float-to-int v1, v1

    aget-object v3, v10, v0

    aget v3, v3, v16

    float-to-int v3, v3

    aget-object v6, v10, v0

    const/4 v8, 0x2

    aget v6, v6, v8

    float-to-int v6, v6

    invoke-static {v1, v3, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v4, v0

    .line 137
    aget v1, v4, v0

    aget-object v3, v5, v0

    invoke-static {v1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    const/4 v13, 0x0

    move/from16 v6, v19

    int-to-float v0, v6

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v0

    .line 145
    :goto_8
    array-length v0, v4

    if-ge v13, v0, :cond_a

    .line 146
    new-instance v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    aget v1, v4, v13

    aget v2, v7, v13

    int-to-float v2, v2

    mul-float v2, v2, v14

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;-><init>(IF)V

    aput-object v0, v18, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 148
    :cond_a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    .line 155
    new-instance v0, Lcom/sec/android/gradient_color_extractor/Kmeans$1;

    invoke-direct {v0}, Lcom/sec/android/gradient_color_extractor/Kmeans$1;-><init>()V

    move-object/from16 v1, v18

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
