.class Landroid/support/v7/app/TwilightCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALTIDUTE_CORRECTION_CIVIL_TWILIGHT:F = -0.10471976f

.field private static final C1:F = 0.0334196f

.field private static final C2:F = 3.49066E-4f

.field private static final C3:F = 5.236E-6f

.field public static final DAY:I = 0x0

.field private static final DEGREES_TO_RADIANS:F = 0.017453292f

.field private static final J0:F = 9.0E-4f

.field public static final NIGHT:I = 0x1

.field private static final OBLIQUITY:F = 0.4092797f

.field private static final UTC_2000:J = 0xdc6d62da00L

.field private static sInstance:Landroid/support/v7/app/TwilightCalculator;


# instance fields
.field public state:I

.field public sunrise:J

.field public sunset:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Landroid/support/v7/app/TwilightCalculator;
    .locals 1

    .line 31
    sget-object v0, Landroid/support/v7/app/TwilightCalculator;->sInstance:Landroid/support/v7/app/TwilightCalculator;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/support/v7/app/TwilightCalculator;

    invoke-direct {v0}, Landroid/support/v7/app/TwilightCalculator;-><init>()V

    sput-object v0, Landroid/support/v7/app/TwilightCalculator;->sInstance:Landroid/support/v7/app/TwilightCalculator;

    .line 34
    :cond_0
    sget-object v0, Landroid/support/v7/app/TwilightCalculator;->sInstance:Landroid/support/v7/app/TwilightCalculator;

    return-object v0
.end method


# virtual methods
.method public calculateTwilight(JDD)V
    .locals 16

    move-object/from16 v0, p0

    const-wide v2, 0xdc6d62da00L

    sub-long v4, p1, v2

    long-to-float v4, v4

    const v5, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v4, v5

    const v5, 0x3c8ceb25

    mul-float v5, v5, v4

    const v6, 0x40c7ae92

    add-float/2addr v5, v6

    float-to-double v6, v5

    .line 95
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide v10, 0x3fa11c5fc0000000L    # 0.03341960161924362

    mul-double v8, v8, v10

    add-double/2addr v8, v6

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v10, v10, v5

    float-to-double v10, v10

    .line 96
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide v12, 0x3f36e05b00000000L    # 3.4906598739326E-4

    mul-double v10, v10, v12

    add-double/2addr v8, v10

    const/high16 v10, 0x40400000    # 3.0f

    mul-float v5, v5, v10

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide v12, 0x3ed5f61cc0000000L    # 5.236000106378924E-6

    mul-double v10, v10, v12

    add-double/2addr v8, v10

    const-wide v10, 0x3ffcbed85e1ce332L    # 1.796593063

    add-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v8, v10

    move-wide/from16 v10, p5

    neg-double v10, v10

    const-wide v12, 0x4076800000000000L    # 360.0

    div-double/2addr v10, v12

    const v5, 0x3a6bedfa    # 9.0E-4f

    sub-float/2addr v4, v5

    float-to-double v12, v4

    sub-double/2addr v12, v10

    .line 103
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-float v4, v12

    add-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v4, v10

    .line 104
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v10, 0x3f75b573eab367a1L    # 0.0053

    mul-double v6, v6, v10

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v8

    .line 105
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v10, -0x4083bcd35a858794L    # -0.0069

    mul-double v6, v6, v10

    add-double/2addr v4, v6

    .line 108
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v8, 0x3fda31a380000000L    # 0.4092797040939331

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v8, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v8, v8, p3

    const-wide v10, -0x4045311600000000L    # -0.10471975803375244

    .line 112
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 113
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v12, v12, v14

    sub-double/2addr v10, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v8, v8, v6

    div-double/2addr v10, v8

    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v10, v12

    if-ltz v9, :cond_0

    .line 117
    iput v6, v0, Landroid/support/v7/app/TwilightCalculator;->state:I

    .line 118
    iput-wide v7, v0, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    .line 119
    iput-wide v7, v0, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    return-void

    :cond_0
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const/4 v9, 0x0

    cmpg-double v12, v10, v12

    if-gtz v12, :cond_1

    .line 122
    iput v9, v0, Landroid/support/v7/app/TwilightCalculator;->state:I

    .line 123
    iput-wide v7, v0, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    .line 124
    iput-wide v7, v0, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    return-void

    .line 128
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v7, v10

    double-to-float v7, v7

    float-to-double v7, v7

    add-double v10, v4, v7

    const-wide v12, 0x4194997000000000L    # 8.64E7

    mul-double v10, v10, v12

    .line 130
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    add-long/2addr v10, v2

    iput-wide v10, v0, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    sub-double/2addr v4, v7

    mul-double v4, v4, v12

    .line 131
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, v0, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    .line 133
    iget-wide v2, v0, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_2

    iget-wide v2, v0, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    cmp-long v1, v2, p1

    if-lez v1, :cond_2

    .line 134
    iput v9, v0, Landroid/support/v7/app/TwilightCalculator;->state:I

    goto :goto_0

    .line 136
    :cond_2
    iput v6, v0, Landroid/support/v7/app/TwilightCalculator;->state:I

    :goto_0
    return-void
.end method
