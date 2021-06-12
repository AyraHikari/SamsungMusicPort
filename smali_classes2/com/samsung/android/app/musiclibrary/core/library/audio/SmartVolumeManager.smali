.class public final Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AVC_STEP:[I

.field private static final CLASSNAME:Ljava/lang/String; = "SmartVolumeManager"

.field private static final DEFAULT_VOLUME_MAX_LEVEL:I = 0xf

.field private static volatile sSmartVolume:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;


# instance fields
.field private mBaseSmartValue:D

.field private mDoResetBaseValue:Z

.field private mMaxVolumeLevel:I

.field private mPath:Ljava/lang/String;

.field private final mSmartVolumeEngine:Lcom/samsung/sectionmap/SmartVolumeLib;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 48
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1e
        0x37
        0x3d
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mBaseSmartValue:D

    const/16 v0, 0xf

    .line 52
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mMaxVolumeLevel:I

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mDoResetBaseValue:Z

    .line 80
    new-instance v0, Lcom/samsung/sectionmap/SmartVolumeLib;

    invoke-direct {v0}, Lcom/samsung/sectionmap/SmartVolumeLib;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mSmartVolumeEngine:Lcom/samsung/sectionmap/SmartVolumeLib;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mSmartVolumeEngine:Lcom/samsung/sectionmap/SmartVolumeLib;

    invoke-virtual {v0}, Lcom/samsung/sectionmap/SmartVolumeLib;->SmartVolumeInit()I

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;
    .locals 2

    .line 66
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->sSmartVolume:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    if-nez v0, :cond_1

    .line 67
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->sSmartVolume:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;-><init>()V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->sSmartVolume:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    .line 71
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->sSmartVolume:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    return-object v0
.end method

.method private getSmartVolume(ID)I
    .locals 17

    const/4 v1, 0x0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    const/4 v2, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    const/4 v7, 0x1

    add-int/2addr v2, v7

    const/4 v8, 0x5

    if-ge v2, v8, :cond_13

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    if-lez p1, :cond_2

    if-le v2, v7, :cond_2

    if-nez v3, :cond_2

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    :cond_2
    const/16 v9, 0xe

    const/16 v10, 0xd

    const/4 v11, 0x7

    const/4 v12, 0x2

    const/4 v13, 0x6

    const-wide/16 v14, 0x0

    cmpl-double v16, v4, v14

    if-lez v16, :cond_b

    if-lt v3, v7, :cond_4

    if-gt v3, v8, :cond_4

    .line 171
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v7, v7, v12

    int-to-double v7, v7

    sub-double/2addr v4, v7

    cmpg-double v7, v4, v14

    if-gez v7, :cond_3

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    if-lt v3, v13, :cond_6

    if-gt v3, v11, :cond_6

    .line 178
    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v7, v8, v7

    int-to-double v7, v7

    sub-double/2addr v4, v7

    cmpg-double v7, v4, v14

    if-gez v7, :cond_5

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    const/16 v8, 0x8

    if-lt v3, v8, :cond_8

    if-gt v3, v10, :cond_8

    .line 185
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v7, v7, v1

    int-to-double v7, v7

    sub-double/2addr v4, v7

    cmpg-double v7, v4, v14

    if-gez v7, :cond_7

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_8
    if-lt v3, v9, :cond_a

    const/16 v8, 0xf

    if-gt v3, v8, :cond_a

    .line 192
    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v7, v8, v7

    int-to-double v7, v7

    sub-double/2addr v4, v7

    cmpg-double v7, v4, v14

    if-gez v7, :cond_9

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, -0x1

    :cond_a
    :goto_1
    cmpg-double v7, v4, v14

    if-gtz v7, :cond_0

    goto :goto_2

    :cond_b
    if-ltz v3, :cond_d

    const/4 v9, 0x4

    if-gt v3, v9, :cond_d

    .line 204
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v7, v7, v12

    int-to-double v7, v7

    add-double/2addr v4, v7

    cmpl-double v7, v4, v14

    if-lez v7, :cond_c

    goto :goto_2

    :cond_c
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    if-lt v3, v8, :cond_f

    if-gt v3, v13, :cond_f

    .line 211
    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v7, v8, v7

    int-to-double v7, v7

    add-double/2addr v4, v7

    cmpl-double v7, v4, v14

    if-lez v7, :cond_e

    goto :goto_2

    :cond_e
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_f
    if-lt v3, v11, :cond_11

    const/16 v8, 0xc

    if-gt v3, v8, :cond_11

    .line 218
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v7, v7, v1

    int-to-double v7, v7

    add-double/2addr v4, v7

    cmpl-double v7, v4, v14

    if-lez v7, :cond_10

    goto :goto_2

    :cond_10
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_11
    if-lt v3, v10, :cond_0

    const/16 v8, 0xe

    if-gt v3, v8, :cond_0

    .line 225
    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v7, v8, v7

    int-to-double v7, v7

    add-double/2addr v4, v7

    cmpl-double v7, v4, v14

    if-lez v7, :cond_12

    goto :goto_2

    :cond_12
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_13
    :goto_2
    sub-int v0, p1, v6

    return v0
.end method

.method private getSmartVolumeWithMaxLevel(IDI)I
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p4

    int-to-float v2, v0

    int-to-float v3, v1

    const/high16 v4, 0x41700000    # 15.0f

    div-float v4, v3, v4

    .line 245
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSmartVolumeWithMaxLevel maxLevel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-wide/from16 v7, p2

    move v6, v2

    const/4 v2, 0x0

    const/4 v9, 0x0

    :cond_0
    :goto_0
    const/4 v10, 0x1

    add-int/2addr v2, v10

    const/4 v11, 0x5

    if-ge v2, v11, :cond_13

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v11, 0x0

    if-lez v0, :cond_2

    if-le v2, v10, :cond_2

    cmpl-float v12, v6, v11

    if-nez v12, :cond_2

    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    :cond_2
    const/4 v12, 0x2

    const/high16 v13, 0x3f800000    # 1.0f

    const-wide/16 v14, 0x0

    cmpl-double v16, v7, v14

    if-lez v16, :cond_b

    const/high16 v11, 0x40a00000    # 5.0f

    cmpl-float v16, v6, v13

    if-ltz v16, :cond_4

    mul-float v16, v4, v11

    cmpg-float v16, v6, v16

    if-gtz v16, :cond_4

    .line 256
    sget-object v10, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v10, v10, v12

    int-to-double v10, v10

    sub-double/2addr v7, v10

    cmpg-double v10, v7, v14

    if-gez v10, :cond_3

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    sub-float/2addr v6, v13

    goto :goto_1

    :cond_4
    mul-float v11, v11, v4

    const/high16 v12, 0x40e00000    # 7.0f

    cmpl-float v11, v6, v11

    if-lez v11, :cond_6

    mul-float v11, v4, v12

    cmpg-float v11, v6, v11

    if-gtz v11, :cond_6

    .line 263
    sget-object v11, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v10, v11, v10

    int-to-double v10, v10

    sub-double/2addr v7, v10

    cmpg-double v10, v7, v14

    if-gez v10, :cond_5

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v9, v9, 0x1

    sub-float/2addr v6, v13

    goto :goto_1

    :cond_6
    mul-float v12, v12, v4

    const/high16 v11, 0x41500000    # 13.0f

    cmpl-float v12, v6, v12

    if-lez v12, :cond_8

    mul-float v12, v4, v11

    cmpg-float v12, v6, v12

    if-gtz v12, :cond_8

    .line 270
    sget-object v10, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v10, v10, v5

    int-to-double v10, v10

    sub-double/2addr v7, v10

    cmpg-double v10, v7, v14

    if-gez v10, :cond_7

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v9, v9, 0x1

    sub-float/2addr v6, v13

    goto :goto_1

    :cond_8
    mul-float v11, v11, v4

    cmpl-float v11, v6, v11

    if-lez v11, :cond_a

    cmpg-float v11, v6, v3

    if-gtz v11, :cond_a

    .line 277
    sget-object v11, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v10, v11, v10

    int-to-double v10, v10

    sub-double/2addr v7, v10

    cmpg-double v10, v7, v14

    if-gez v10, :cond_9

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v9, v9, 0x1

    sub-float/2addr v6, v13

    :cond_a
    :goto_1
    cmpg-double v10, v7, v14

    if-gtz v10, :cond_0

    goto/16 :goto_2

    :cond_b
    const/high16 v16, 0x40800000    # 4.0f

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_d

    mul-float v11, v4, v16

    cmpg-float v11, v6, v11

    if-gtz v11, :cond_d

    .line 289
    sget-object v10, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v10, v10, v12

    int-to-double v10, v10

    add-double/2addr v7, v10

    cmpl-double v10, v7, v14

    if-lez v10, :cond_c

    goto :goto_2

    :cond_c
    add-int/lit8 v9, v9, -0x1

    add-float/2addr v6, v13

    goto/16 :goto_0

    :cond_d
    mul-float v16, v16, v4

    const/high16 v11, 0x40c00000    # 6.0f

    cmpl-float v12, v6, v16

    if-lez v12, :cond_f

    mul-float v12, v4, v11

    cmpg-float v12, v6, v12

    if-gtz v12, :cond_f

    .line 296
    sget-object v11, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v10, v11, v10

    int-to-double v10, v10

    add-double/2addr v7, v10

    cmpl-double v10, v7, v14

    if-lez v10, :cond_e

    goto :goto_2

    :cond_e
    add-int/lit8 v9, v9, -0x1

    add-float/2addr v6, v13

    goto/16 :goto_0

    :cond_f
    mul-float v11, v11, v4

    const/high16 v12, 0x41400000    # 12.0f

    cmpl-float v11, v6, v11

    if-lez v11, :cond_11

    mul-float v11, v4, v12

    cmpg-float v11, v6, v11

    if-gtz v11, :cond_11

    .line 303
    sget-object v10, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v10, v10, v5

    int-to-double v10, v10

    add-double/2addr v7, v10

    cmpl-double v10, v7, v14

    if-lez v10, :cond_10

    goto :goto_2

    :cond_10
    add-int/lit8 v9, v9, -0x1

    add-float/2addr v6, v13

    goto/16 :goto_0

    :cond_11
    mul-float v12, v12, v4

    cmpl-float v11, v6, v12

    if-lez v11, :cond_0

    add-int/lit8 v11, v1, -0x1

    int-to-float v11, v11

    cmpg-float v11, v6, v11

    if-gtz v11, :cond_0

    .line 310
    sget-object v11, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v10, v11, v10

    int-to-double v10, v10

    add-double/2addr v7, v10

    cmpl-double v10, v7, v14

    if-lez v10, :cond_12

    goto :goto_2

    :cond_12
    add-int/lit8 v9, v9, -0x1

    add-float/2addr v6, v13

    goto/16 :goto_0

    :cond_13
    :goto_2
    sub-int/2addr v0, v9

    return v0
.end method


# virtual methods
.method public getSongPath()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume(ILjava/lang/String;)I
    .locals 8

    .line 114
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mPath:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mSmartVolumeEngine:Lcom/samsung/sectionmap/SmartVolumeLib;

    invoke-virtual {v0, p2}, Lcom/samsung/sectionmap/SmartVolumeLib;->SmartVolumeEXE(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 119
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->CLASSNAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVolume fail and so return current volume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 123
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mDoResetBaseValue:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 124
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mBaseSmartValue:D

    .line 125
    iput-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mDoResetBaseValue:Z

    .line 128
    :cond_1
    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mBaseSmartValue:D

    sub-double/2addr v0, v6

    .line 130
    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mBaseSmartValue:D

    cmpl-double v4, v6, v2

    if-eqz v4, :cond_5

    cmpl-double v2, v0, v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 137
    :cond_2
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mMaxVolumeLevel:I

    const/16 v3, 0xf

    if-eq v2, v3, :cond_3

    .line 138
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mMaxVolumeLevel:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->getSmartVolumeWithMaxLevel(IDI)I

    move-result v0

    goto :goto_0

    .line 140
    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->getSmartVolume(ID)I

    move-result v0

    :goto_0
    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 146
    :cond_4
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVolume current system volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\nSmartVolumeExe adj : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " base adj : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mBaseSmartValue:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "\nsmartVolume : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\npath : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 131
    :cond_5
    :goto_1
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->CLASSNAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Useless get SmartVolume!, so return current volume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public release()I
    .locals 1

    const/4 v0, 0x0

    .line 93
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->sSmartVolume:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mSmartVolumeEngine:Lcom/samsung/sectionmap/SmartVolumeLib;

    invoke-virtual {v0}, Lcom/samsung/sectionmap/SmartVolumeLib;->SmartVolumeRelease()I

    move-result v0

    return v0
.end method

.method public resetBaseValue()V
    .locals 2

    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mDoResetBaseValue:Z

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mSmartVolumeEngine:Lcom/samsung/sectionmap/SmartVolumeLib;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/sectionmap/SmartVolumeLib;->SmartVolumeEXE(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mBaseSmartValue:D

    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mDoResetBaseValue:Z

    :cond_0
    return-void
.end method

.method public resetValues()V
    .locals 1

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mPath:Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->resetBaseValue()V

    return-void
.end method

.method public setMaxVolumeLevel(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mMaxVolumeLevel:I

    return-void
.end method
