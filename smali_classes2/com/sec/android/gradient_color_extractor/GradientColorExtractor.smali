.class public Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;
.super Lcom/sec/android/gradient_color_extractor/Kmeans;
.source "SourceFile"


# direct methods
.method public static a()[I
    .locals 4

    const/16 v0, 0xc

    .line 45
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x777778

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 50
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    aput v2, v0, v1

    .line 51
    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 52
    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 53
    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x6

    aput v2, v0, v3

    .line 54
    new-array v2, v1, [F

    fill-array-data v2, :array_4

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 55
    new-array v2, v1, [F

    fill-array-data v2, :array_5

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0x8

    aput v2, v0, v3

    .line 56
    new-array v2, v1, [F

    fill-array-data v2, :array_6

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0x9

    aput v2, v0, v3

    .line 57
    new-array v2, v1, [F

    fill-array-data v2, :array_7

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0xa

    aput v2, v0, v3

    .line 58
    new-array v1, v1, [F

    fill-array-data v1, :array_8

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x420a0000    # 34.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x428b0000    # 69.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x42f90000    # 124.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_4
    .array-data 4
        0x43298000    # 169.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x43568000    # 214.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x43844000    # 264.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x4390c000    # 289.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_8
    .array-data 4
        0x439fc000    # 319.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method
