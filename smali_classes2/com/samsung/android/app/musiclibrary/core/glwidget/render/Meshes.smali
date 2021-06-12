.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FramedRectangle:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    .line 25
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->FramedRectangle:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static circleColors(III)[F
    .locals 10

    .line 181
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 182
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 183
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 184
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 186
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 187
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    .line 188
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    .line 189
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x2

    mul-int/lit8 v1, p0, 0x4

    .line 191
    new-array v1, v1, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, p0, :cond_1

    .line 194
    rem-int/lit8 v9, v7, 0x2

    if-nez v9, :cond_0

    add-int/lit8 v9, v8, 0x0

    .line 195
    aput v0, v1, v9

    add-int/lit8 v9, v8, 0x1

    .line 196
    aput v2, v1, v9

    add-int/lit8 v9, v8, 0x2

    .line 197
    aput v3, v1, v9

    add-int/lit8 v9, v8, 0x3

    .line 198
    aput p1, v1, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v8, 0x0

    .line 200
    aput v4, v1, v9

    add-int/lit8 v9, v8, 0x1

    .line 201
    aput v5, v1, v9

    add-int/lit8 v9, v8, 0x2

    .line 202
    aput v6, v1, v9

    add-int/lit8 v9, v8, 0x3

    .line 203
    aput p2, v1, v9

    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x4

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static circleCoords(FFFFFFI)[F
    .locals 9

    add-int/lit8 v0, p6, 0x1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v0, 0x3

    .line 66
    new-array v1, v1, [F

    sub-float/2addr p5, p4

    int-to-float p6, p6

    div-float/2addr p5, p6

    const/4 p6, 0x0

    move v2, p4

    const/4 p4, 0x0

    :goto_0
    if-ge p6, v0, :cond_1

    .line 71
    rem-int/lit8 v3, p6, 0x2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    add-int/lit8 v3, p4, 0x0

    .line 72
    aput p0, v1, v3

    add-int/lit8 v3, p4, 0x1

    .line 73
    aput p1, v1, v3

    add-int/lit8 v3, p4, 0x2

    .line 74
    aput v4, v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, p4, 0x0

    float-to-double v5, v2

    .line 76
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, p2

    add-float/2addr v7, p0

    aput v7, v1, v3

    add-int/lit8 v3, p4, 0x1

    .line 77
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v5, p1

    aput v5, v1, v3

    add-int/lit8 v3, p4, 0x2

    .line 78
    aput v4, v1, v3

    add-float/2addr v2, p5

    :goto_1
    add-int/lit8 p6, p6, 0x1

    add-int/lit8 p4, p4, 0x3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static circleShadowColors(III)[F
    .locals 10

    .line 295
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 296
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 297
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 298
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 300
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 301
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    .line 302
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    .line 303
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x2

    mul-int/lit8 v1, p0, 0x4

    .line 306
    new-array v1, v1, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, p0, :cond_1

    .line 309
    rem-int/lit8 v9, v7, 0x2

    if-nez v9, :cond_0

    add-int/lit8 v9, v8, 0x0

    .line 311
    aput v4, v1, v9

    add-int/lit8 v9, v8, 0x1

    .line 312
    aput v5, v1, v9

    add-int/lit8 v9, v8, 0x2

    .line 313
    aput v6, v1, v9

    add-int/lit8 v9, v8, 0x3

    .line 314
    aput p2, v1, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v8, 0x0

    .line 316
    aput v0, v1, v9

    add-int/lit8 v9, v8, 0x1

    .line 317
    aput v2, v1, v9

    add-int/lit8 v9, v8, 0x2

    .line 318
    aput v3, v1, v9

    add-int/lit8 v9, v8, 0x3

    .line 319
    aput p1, v1, v9

    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x4

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static circleShadowCoord(IFFFFF)[F
    .locals 9

    add-int/lit8 v0, p0, 0x1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v0, 0x3

    .line 212
    new-array v1, v1, [F

    int-to-double v2, p0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v4, v2

    double-to-float p0, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 217
    :goto_0
    div-int/lit8 v4, v0, 0x2

    if-ge v2, v4, :cond_0

    float-to-double v4, p5

    .line 218
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 219
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-int/lit8 v5, v3, 0x0

    add-float v7, p3, p4

    mul-float v8, v7, v6

    add-float/2addr v8, p1

    .line 220
    aput v8, v1, v5

    add-int/lit8 v5, v3, 0x1

    mul-float v7, v7, v4

    add-float/2addr v7, p2

    .line 221
    aput v7, v1, v5

    add-int/lit8 v5, v3, 0x2

    const/4 v7, 0x0

    .line 222
    aput v7, v1, v5

    add-int/lit8 v5, v3, 0x3

    mul-float v6, v6, p3

    add-float/2addr v6, p1

    .line 224
    aput v6, v1, v5

    add-int/lit8 v5, v3, 0x4

    mul-float v4, v4, p3

    add-float/2addr v4, p2

    .line 225
    aput v4, v1, v5

    add-int/lit8 v4, v3, 0x5

    .line 226
    aput v7, v1, v4

    sub-float/2addr p5, p0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x6

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static copyColor([F[FI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    .line 289
    aget v2, p1, v0

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getColoredCircleShadowColors(I[I[F)[F
    .locals 16

    move-object/from16 v1, p1

    .line 234
    rem-int/lit8 v2, p0, 0x3

    if-nez v2, :cond_3

    add-int/lit8 v0, p0, 0x1

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v2, 0x4

    .line 238
    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v0, v0

    div-float/2addr v4, v0

    const/4 v0, 0x0

    const/4 v5, 0x4

    .line 242
    new-array v6, v5, [F

    .line 243
    array-length v7, v1

    mul-int/lit8 v7, v7, 0x4

    new-array v7, v7, [F

    .line 245
    array-length v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v10, v8, :cond_0

    aget v12, v1, v10

    add-int/lit8 v13, v11, 0x0

    .line 246
    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float/2addr v14, v15

    aput v14, v7, v13

    add-int/lit8 v13, v11, 0x1

    .line 247
    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v15

    aput v14, v7, v13

    add-int/lit8 v13, v11, 0x2

    .line 248
    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v15

    aput v14, v7, v13

    add-int/lit8 v13, v11, 0x3

    .line 249
    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v15

    aput v12, v7, v13

    add-int/2addr v11, v5

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v9, v2, :cond_2

    .line 253
    rem-int/lit8 v8, v9, 0x2

    if-nez v8, :cond_1

    move-object/from16 v8, p2

    .line 254
    invoke-static {v7, v8, v0, v1, v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->updateColor([F[FFI[F)I

    move-result v1

    .line 255
    invoke-static {v3, v6, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->copyColor([F[FI)V

    add-float/2addr v0, v4

    goto :goto_2

    :cond_1
    move-object/from16 v8, p2

    .line 258
    invoke-static {v3, v6, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->copyColor([F[FI)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v5, v5, 0x4

    goto :goto_1

    :cond_2
    return-object v3

    .line 235
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cornerSegmentCount should be divisible to 3!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRoundedRectCoords(FIFFFF)[F
    .locals 16

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p5

    const/4 v1, 0x1

    if-lt v7, v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p0, v1

    if-lez v2, :cond_0

    div-float v0, v1, p0

    move v10, v0

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    mul-float v0, p0, v1

    move v11, v0

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_0
    add-int/lit8 v0, v7, 0x1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    const/16 v1, 0x3c

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    .line 128
    new-array v12, v1, [F

    const/4 v0, 0x0

    const/4 v13, 0x0

    .line 131
    invoke-static {v12, v0, v13, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    .line 132
    invoke-static {v12, v0, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    sub-float v15, v10, p3

    .line 133
    invoke-static {v12, v0, v13, v15}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    .line 134
    invoke-static {v12, v0, v8, v15}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v6

    const v4, 0x40490fdb    # (float)Math.PI

    const v5, 0x3fc90fdb

    move/from16 v0, p2

    move v1, v15

    move/from16 v2, p2

    move/from16 v3, p3

    move v13, v6

    move/from16 v6, p1

    .line 136
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleCoords(FFFFFFI)[F

    move-result-object v0

    .line 138
    invoke-static {v0, v12, v13}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v0

    .line 140
    invoke-static {v12, v0, v8, v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    .line 141
    invoke-static {v12, v0, v8, v15}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    sub-float v6, v11, p4

    .line 142
    invoke-static {v12, v0, v6, v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    .line 143
    invoke-static {v12, v0, v6, v15}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v10

    const v4, 0x3fc90fdb

    const/4 v5, 0x0

    move v0, v6

    move/from16 v2, p4

    move v14, v6

    move/from16 v6, p1

    .line 146
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleCoords(FFFFFFI)[F

    move-result-object v0

    .line 148
    invoke-static {v0, v12, v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v0

    .line 151
    invoke-static {v12, v0, v11, v15}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    .line 152
    invoke-static {v12, v0, v14, v15}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    .line 153
    invoke-static {v12, v0, v11, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    .line 154
    invoke-static {v12, v0, v14, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v10

    const/4 v4, 0x0

    const v5, -0x4036f025

    move v0, v14

    move/from16 v1, p5

    move/from16 v3, p5

    .line 157
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleCoords(FFFFFFI)[F

    move-result-object v0

    .line 159
    invoke-static {v0, v12, v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v0

    const/4 v1, 0x0

    .line 162
    invoke-static {v12, v0, v14, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    .line 163
    invoke-static {v12, v0, v14, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    .line 164
    invoke-static {v12, v0, v8, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    .line 165
    invoke-static {v12, v0, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v10

    const v4, -0x4036f025

    const v5, -0x3fb6f025

    move/from16 v0, p2

    move/from16 v1, p5

    move/from16 v2, p2

    .line 167
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleCoords(FFFFFFI)[F

    move-result-object v0

    .line 169
    invoke-static {v0, v12, v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v0

    .line 172
    invoke-static {v12, v0, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    .line 173
    invoke-static {v12, v0, v14, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    .line 174
    invoke-static {v12, v0, v8, v15}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    move-result v0

    .line 175
    invoke-static {v12, v0, v14, v15}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->put2DCoord([FIFF)I

    return-object v12

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Segment count should be greater then 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getShadowMeshLength(II)I
    .locals 1

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x2

    mul-int/lit8 v0, p1, 0x20

    mul-int/lit8 p0, p0, 0x4

    mul-int p0, p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static getTexturedRectangle(F)[F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    div-float p0, v0, p0

    move v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    mul-float p0, p0, v0

    :goto_0
    const/16 v1, 0xc

    .line 97
    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput p0, v1, v2

    const/4 v2, 0x4

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v0, v1, v2

    const/16 v2, 0x8

    aput v3, v1, v2

    const/16 v2, 0x9

    aput p0, v1, v2

    const/16 p0, 0xa

    aput v0, v1, p0

    const/16 p0, 0xb

    aput v3, v1, p0

    return-object v1
.end method

.method private static put2DCoord([FIFF)I
    .locals 0

    .line 389
    aput p2, p0, p1

    add-int/lit8 p2, p1, 0x1

    .line 390
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x2

    const/4 p3, 0x0

    .line 391
    aput p3, p0, p2

    add-int/lit8 p1, p1, 0x3

    return p1
.end method

.method private static putArray([F[FI)I
    .locals 2

    .line 383
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    array-length p0, p0

    add-int/2addr p2, p0

    return p2
.end method

.method public static roundShadowColors(III)[F
    .locals 13

    .line 408
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 409
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 410
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 411
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 413
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    .line 414
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    .line 415
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v1

    .line 416
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v1

    const/4 v1, 0x4

    .line 419
    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->getShadowMeshLength(II)I

    move-result v9

    .line 421
    new-array v9, v9, [F

    const/16 v10, 0x20

    .line 423
    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v5, v10, v11

    const/4 v12, 0x1

    aput v6, v10, v12

    const/4 v12, 0x2

    aput v7, v10, v12

    const/4 v12, 0x3

    aput v8, v10, v12

    aput v5, v10, v1

    const/4 v12, 0x5

    aput v6, v10, v12

    const/4 v12, 0x6

    aput v7, v10, v12

    const/4 v12, 0x7

    aput v8, v10, v12

    const/16 v12, 0x8

    aput v0, v10, v12

    const/16 v12, 0x9

    aput v2, v10, v12

    const/16 v12, 0xa

    aput v3, v10, v12

    const/16 v12, 0xb

    aput v4, v10, v12

    const/16 v12, 0xc

    aput v0, v10, v12

    const/16 v12, 0xd

    aput v2, v10, v12

    const/16 v12, 0xe

    aput v3, v10, v12

    const/16 v12, 0xf

    aput v4, v10, v12

    const/16 v12, 0x10

    aput v0, v10, v12

    const/16 v12, 0x11

    aput v2, v10, v12

    const/16 v12, 0x12

    aput v3, v10, v12

    const/16 v12, 0x13

    aput v4, v10, v12

    const/16 v12, 0x14

    aput v5, v10, v12

    const/16 v12, 0x15

    aput v6, v10, v12

    const/16 v12, 0x16

    aput v7, v10, v12

    const/16 v12, 0x17

    aput v8, v10, v12

    const/16 v12, 0x18

    aput v0, v10, v12

    const/16 v0, 0x19

    aput v2, v10, v0

    const/16 v0, 0x1a

    aput v3, v10, v0

    const/16 v0, 0x1b

    aput v4, v10, v0

    const/16 v0, 0x1c

    aput v5, v10, v0

    const/16 v0, 0x1d

    aput v6, v10, v0

    const/16 v0, 0x1e

    aput v7, v10, v0

    const/16 v0, 0x1f

    aput v8, v10, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v11, v1, :cond_0

    .line 430
    invoke-static {v10, v9, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v0

    .line 432
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleColors(III)[F

    move-result-object v2

    .line 433
    invoke-static {v2, v9, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-object v9
.end method

.method public static roundShadowCoords(FFFFFFFFI)[F
    .locals 27

    const/4 v0, 0x3

    move/from16 v8, p8

    .line 333
    invoke-static {v8, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->getShadowMeshLength(II)I

    move-result v1

    const/16 v2, 0x18

    .line 335
    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    move/from16 v9, p1

    neg-float v6, v9

    const/4 v7, 0x1

    aput v6, v3, v7

    const/4 v10, 0x2

    aput v5, v3, v10

    const/high16 v11, 0x3f000000    # 0.5f

    aput v11, v3, v0

    move/from16 v12, p0

    neg-float v12, v12

    const/4 v13, 0x4

    aput v12, v3, v13

    const/4 v14, 0x5

    aput v5, v3, v14

    const/4 v15, 0x6

    aput v5, v3, v15

    const/16 v16, 0x7

    aput v5, v3, v16

    const/16 v17, 0x8

    aput v5, v3, v17

    const/16 v18, 0x9

    aput v11, v3, v18

    const/16 v19, 0xa

    aput v5, v3, v19

    const/16 v20, 0xb

    aput v5, v3, v20

    const/16 v20, 0xc

    aput v11, v3, v20

    const/16 v20, 0xd

    aput v5, v3, v20

    const/16 v20, 0xe

    aput v5, v3, v20

    const/16 v20, 0xf

    aput v11, v3, v20

    const/16 v20, 0x10

    aput v12, v3, v20

    const/16 v12, 0x11

    aput v5, v3, v12

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v20, 0x12

    aput v12, v3, v20

    const/16 v20, 0x13

    aput v5, v3, v20

    const/16 v20, 0x14

    aput v5, v3, v20

    const/16 v20, 0x15

    aput v12, v3, v20

    const/16 v20, 0x16

    aput v6, v3, v20

    const/16 v6, 0x17

    aput v5, v3, v6

    .line 339
    new-array v6, v2, [F

    add-float v21, p3, v12

    aput v21, v6, v4

    aput v5, v6, v7

    aput v5, v6, v10

    add-float v22, p2, v12

    aput v22, v6, v0

    aput v11, v6, v13

    aput v5, v6, v14

    aput v12, v6, v15

    aput v5, v6, v16

    aput v5, v6, v17

    aput v12, v6, v18

    aput v11, v6, v19

    const/16 v23, 0xb

    aput v5, v6, v23

    const/16 v23, 0xc

    aput v12, v6, v23

    const/16 v23, 0xd

    aput v11, v6, v23

    const/16 v23, 0xe

    aput v5, v6, v23

    const/16 v23, 0xf

    aput v22, v6, v23

    const/16 v22, 0x10

    aput v11, v6, v22

    const/16 v22, 0x11

    aput v5, v6, v22

    const/16 v22, 0x12

    aput v12, v6, v22

    const/16 v22, 0x13

    aput v12, v6, v22

    const/16 v22, 0x14

    aput v5, v6, v22

    const/16 v22, 0x15

    aput v21, v6, v22

    const/16 v21, 0x16

    aput v12, v6, v21

    const/16 v21, 0x17

    aput v5, v6, v21

    move-object/from16 v24, v6

    .line 344
    new-array v6, v2, [F

    aput v12, v6, v4

    add-float v22, p5, v12

    aput v22, v6, v7

    aput v5, v6, v10

    aput v11, v6, v0

    add-float v23, p4, v12

    aput v23, v6, v13

    aput v5, v6, v14

    aput v12, v6, v15

    aput v12, v6, v16

    aput v5, v6, v17

    aput v11, v6, v18

    aput v12, v6, v19

    const/16 v25, 0xb

    aput v5, v6, v25

    const/16 v25, 0xc

    aput v11, v6, v25

    const/16 v25, 0xd

    aput v12, v6, v25

    const/16 v25, 0xe

    aput v5, v6, v25

    const/16 v25, 0xf

    aput v11, v6, v25

    const/16 v25, 0x10

    aput v23, v6, v25

    const/16 v23, 0x11

    aput v5, v6, v23

    const/16 v23, 0x12

    aput v5, v6, v23

    const/16 v23, 0x13

    aput v12, v6, v23

    const/16 v23, 0x14

    aput v5, v6, v23

    const/16 v23, 0x15

    aput v5, v6, v23

    const/16 v23, 0x16

    aput v22, v6, v23

    const/16 v22, 0x17

    aput v5, v6, v22

    .line 348
    new-array v2, v2, [F

    move-object/from16 v26, v6

    move/from16 v6, p7

    neg-float v15, v6

    aput v15, v2, v4

    aput v12, v2, v7

    aput v5, v2, v10

    move/from16 v7, p6

    neg-float v7, v7

    aput v7, v2, v0

    aput v11, v2, v13

    aput v5, v2, v14

    const/4 v0, 0x6

    aput v5, v2, v0

    aput v12, v2, v16

    aput v5, v2, v17

    aput v5, v2, v18

    aput v11, v2, v19

    const/16 v0, 0xb

    aput v5, v2, v0

    const/16 v0, 0xc

    aput v5, v2, v0

    const/16 v0, 0xd

    aput v11, v2, v0

    const/16 v0, 0xe

    aput v5, v2, v0

    const/16 v0, 0xf

    aput v7, v2, v0

    const/16 v0, 0x10

    aput v11, v2, v0

    const/16 v0, 0x11

    aput v5, v2, v0

    const/16 v0, 0x12

    aput v5, v2, v0

    const/16 v0, 0x13

    aput v5, v2, v0

    const/16 v0, 0x14

    aput v5, v2, v0

    const/16 v0, 0x15

    aput v15, v2, v0

    const/16 v0, 0x16

    aput v5, v2, v0

    const/16 v0, 0x17

    aput v5, v2, v0

    .line 352
    new-array v0, v1, [F

    .line 354
    invoke-static {v3, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v10

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v5, -0x4036f025

    const/4 v7, 0x0

    move-object v11, v2

    move v2, v3

    move/from16 v3, p3

    move/from16 v4, p1

    move-object/from16 v12, v24

    move-object/from16 v13, v26

    move v6, v7

    move/from16 v7, p8

    .line 357
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleCoords(FFFFFFI)[F

    move-result-object v1

    .line 359
    invoke-static {v1, v0, v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v1

    .line 361
    invoke-static {v12, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v10

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const v6, 0x3fc90fdb

    move/from16 v4, p5

    .line 363
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleCoords(FFFFFFI)[F

    move-result-object v1

    .line 365
    invoke-static {v1, v0, v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v1

    .line 367
    invoke-static {v13, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v10

    const/4 v1, 0x0

    const v5, 0x3fc90fdb

    const v6, 0x40490fdb    # (float)Math.PI

    move/from16 v3, p7

    .line 369
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleCoords(FFFFFFI)[F

    move-result-object v1

    .line 371
    invoke-static {v1, v0, v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v1

    .line 373
    invoke-static {v11, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    move-result v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v5, 0x40490fdb    # (float)Math.PI

    const v6, 0x4096cbe4

    move/from16 v4, p1

    .line 375
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleCoords(FFFFFFI)[F

    move-result-object v1

    .line 377
    invoke-static {v1, v0, v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->putArray([F[FI)I

    return-object v0
.end method

.method public static shadeColors(II)[F
    .locals 8

    .line 47
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 48
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 49
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 50
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    .line 52
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    .line 54
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    .line 55
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    const/16 v1, 0x18

    .line 57
    new-array v1, v1, [F

    const/4 v7, 0x0

    aput v4, v1, v7

    const/4 v7, 0x1

    aput v5, v1, v7

    const/4 v7, 0x2

    aput v6, v1, v7

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v7, 0x4

    aput v0, v1, v7

    const/4 v7, 0x5

    aput v2, v1, v7

    const/4 v7, 0x6

    aput v3, v1, v7

    const/4 v7, 0x7

    aput p0, v1, v7

    const/16 v7, 0x8

    aput v4, v1, v7

    const/16 v7, 0x9

    aput v5, v1, v7

    const/16 v7, 0xa

    aput v6, v1, v7

    const/16 v7, 0xb

    aput p1, v1, v7

    const/16 v7, 0xc

    aput v0, v1, v7

    const/16 v7, 0xd

    aput v2, v1, v7

    const/16 v7, 0xe

    aput v3, v1, v7

    const/16 v7, 0xf

    aput p0, v1, v7

    const/16 v7, 0x10

    aput v4, v1, v7

    const/16 v4, 0x11

    aput v5, v1, v4

    const/16 v4, 0x12

    aput v6, v1, v4

    const/16 v4, 0x13

    aput p1, v1, v4

    const/16 p1, 0x14

    aput v0, v1, p1

    const/16 p1, 0x15

    aput v2, v1, p1

    const/16 p1, 0x16

    aput v3, v1, p1

    const/16 p1, 0x17

    aput p0, v1, p1

    return-object v1
.end method

.method public static shadeCoords(F)[F
    .locals 5

    const/16 v0, 0x12

    .line 35
    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p0

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v3, 0x0

    sub-float p0, v3, p0

    const/4 v4, 0x1

    aput p0, v0, v4

    const/4 v4, 0x2

    aput v3, v0, v4

    const/4 v4, 0x3

    aput v1, v0, v4

    const/4 v4, 0x4

    aput v3, v0, v4

    const/4 v4, 0x5

    aput v3, v0, v4

    const/4 v4, 0x6

    aput p0, v0, v4

    const/4 v4, 0x7

    aput p0, v0, v4

    const/16 v4, 0x8

    aput v3, v0, v4

    const/16 v4, 0x9

    aput v3, v0, v4

    const/16 v4, 0xa

    aput v3, v0, v4

    const/16 v4, 0xb

    aput v3, v0, v4

    const/16 v4, 0xc

    aput p0, v0, v4

    const/16 p0, 0xd

    aput v2, v0, p0

    const/16 p0, 0xe

    aput v3, v0, p0

    const/16 p0, 0xf

    aput v3, v0, p0

    const/16 p0, 0x10

    aput v1, v0, p0

    const/16 p0, 0x11

    aput v3, v0, p0

    return-object v0
.end method

.method private static updateColor([F[FFI[F)I
    .locals 5

    add-int/lit8 p3, p3, 0x1

    .line 266
    array-length v0, p1

    rem-int/2addr p3, v0

    .line 267
    :cond_0
    aget v0, p1, p3

    const/4 v1, 0x0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 269
    array-length v0, p1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    :cond_1
    add-int/lit8 v0, p3, -0x1

    mul-int/lit8 v2, v0, 0x4

    mul-int/lit8 v3, p3, 0x4

    .line 277
    aget v4, p1, v0

    sub-float/2addr p2, v4

    aget p3, p1, p3

    aget p1, p1, v0

    sub-float/2addr p3, p1

    div-float/2addr p2, p3

    :goto_0
    const/4 p1, 0x4

    if-ge v1, p1, :cond_2

    add-int p1, v1, v2

    .line 279
    aget p1, p0, p1

    add-int p3, v1, v3

    .line 280
    aget p3, p0, p3

    sub-float/2addr p3, p1

    mul-float p3, p3, p2

    add-float/2addr p3, p1

    .line 281
    aput p3, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
