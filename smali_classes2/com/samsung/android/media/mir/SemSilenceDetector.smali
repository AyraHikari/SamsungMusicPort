.class public Lcom/samsung/android/media/mir/SemSilenceDetector;
.super Ljava/lang/Object;
.source "SemSilenceDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;
    }
.end annotation


# static fields
.field public static DEFAULT_THRESHOLD:D = -80.0

.field private static final SMSD_ERR_INSUFF_MEM:I = -0x2

.field private static final SMSD_ERR_INVALID_ARG:I = -0x4

.field private static final SMSD_ERR_NOT_OPEN_FILE:I = -0x7

.field private static final SMSD_ERR_UNSUPPORT:I = -0x3

.field private static SMSD_LOAD_LIBRARY:Z = false

.field private static final SMSD_OK:I = 0x0

.field private static final USE_JNI_LIBRARY:Z = true


# instance fields
.field private kTimeOutUs:J

.field private mFilepath:Ljava/lang/String;

.field private mMinDurationUs:J

.field private mSearchDurationUs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "smsd"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/samsung/android/media/mir/SemSilenceDetector;->SMSD_LOAD_LIBRARY:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/samsung/android/media/mir/SemSilenceDetector;->SMSD_LOAD_LIBRARY:Z

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x4c4b40

    .line 2
    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mSearchDurationUs:J

    const-wide/32 v0, 0x1c9c380

    .line 3
    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mMinDurationUs:J

    const-wide/16 v0, 0x1388

    .line 4
    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    .line 5
    iput-object p1, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mFilepath:Ljava/lang/String;

    return-void
.end method

.method private byteOffsetToTimeUs(JII)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    int-to-long v0, p4

    div-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    int-to-long p3, p3

    div-long/2addr p1, p3

    return-wide p1
.end method

.method private dbToShort(D)S
    .locals 2

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    const-wide/high16 v0, 0x40e0000000000000L    # 32768.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    int-to-short p1, p1

    return p1
.end method

.method private decodeFrontBack(Ljava/lang/String;ZJD)Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;
    .locals 38

    move-object/from16 v1, p0

    move-wide/from16 v2, p5

    .line 1
    new-instance v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;-><init>(Lcom/samsung/android/media/mir/SemSilenceDetector;Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;)V

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/samsung/android/media/mir/SemSilenceDetector;->dbToShort(D)S

    move-result v5

    .line 3
    new-instance v6, Landroid/media/MediaExtractor;

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V

    move-object/from16 v7, p1

    .line 4
    :try_start_0
    invoke-virtual {v6, v7}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v9, 0x0

    .line 5
    :goto_0
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v10

    const-string v11, "mime"

    const/4 v12, 0x1

    if-lt v9, v10, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v6, v9}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    .line 7
    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "audio/"

    .line 8
    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    move v10, v12

    :goto_1
    if-nez v10, :cond_1

    return-object v4

    .line 9
    :cond_1
    invoke-virtual {v6, v9}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    if-nez v10, :cond_2

    return-object v4

    .line 10
    :cond_2
    :try_start_1
    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    const-string v11, "sample-rate"

    .line 11
    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    const-string v11, "channel-count"

    .line 12
    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    const-string v11, "durationUs"

    .line 13
    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v15, v9

    .line 14
    iget-wide v8, v1, Lcom/samsung/android/media/mir/SemSilenceDetector;->mMinDurationUs:J

    cmp-long v8, v13, v8

    if-gtz v8, :cond_3

    return-object v4

    .line 15
    :cond_3
    iget-object v8, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    .line 16
    sget-boolean v9, Lcom/samsung/android/media/mir/SemSilenceDetector;->SMSD_LOAD_LIBRARY:Z

    if-eqz v9, :cond_7

    const-string v9, "audio/x-ms-wma"

    .line 17
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "audio/mpeg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "audio/aac"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "audio/mp4a-latm"

    .line 18
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "audio/flac"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "audio/raw"

    .line 19
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "audio/x-wav"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "audio/vorbis"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "application/ogg"

    .line 20
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 21
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/media/mir/SemSilenceDetector;->init(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6

    .line 22
    invoke-direct {v1, v2, v3}, Lcom/samsung/android/media/mir/SemSilenceDetector;->getSilencePositionNative(D)[J

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    .line 23
    aget-wide v7, v2, v3

    iput-wide v7, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 24
    aget-wide v7, v2, v12

    iput-wide v7, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    move v2, v12

    .line 25
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/media/mir/SemSilenceDetector;->deinit()I

    goto :goto_3

    .line 26
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/media/mir/SemSilenceDetector;->deinit()I

    const-wide/16 v2, -0x1

    .line 27
    iput-wide v2, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 28
    iput-wide v2, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    :cond_7
    move v2, v12

    :goto_3
    if-eqz v2, :cond_31

    .line 29
    iget-object v2, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    if-nez v2, :cond_8

    .line 30
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    return-object v4

    :cond_8
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v2, v10, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 32
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 33
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 34
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    if-eqz p2, :cond_9

    .line 35
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 36
    invoke-virtual {v2, v10, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 37
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 38
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 39
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    :cond_9
    move v9, v15

    .line 40
    invoke-virtual {v6, v9}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 41
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 42
    iget v9, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    div-int/lit8 v9, v9, 0x64

    iget v13, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    mul-int/2addr v9, v13

    const-wide/16 v13, 0x0

    const/4 v15, 0x2

    .line 43
    invoke-virtual {v6, v13, v14, v15}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-object/from16 v23, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v8, v7

    move/from16 v7, p2

    :goto_4
    const-wide/32 v26, 0xf4240

    const/16 v4, 0x32

    const/16 v28, 0x4

    if-nez v24, :cond_1b

    if-lt v11, v4, :cond_a

    goto/16 :goto_d

    :cond_a
    add-int/lit8 v4, v11, 0x1

    if-nez v16, :cond_e

    .line 44
    iget-wide v13, v1, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    invoke-virtual {v2, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v17

    if-ltz v17, :cond_e

    .line 45
    aget-object v11, v8, v17

    const/4 v13, 0x0

    .line 46
    invoke-virtual {v6, v11, v13}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    if-gez v14, :cond_b

    const/4 v13, 0x1

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    goto :goto_5

    .line 47
    :cond_b
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v18

    move/from16 v13, v16

    move-wide/from16 v20, v18

    move/from16 v19, v14

    :goto_5
    const/16 v18, 0x0

    if-eqz v13, :cond_c

    move/from16 v22, v28

    goto :goto_6

    :cond_c
    const/16 v22, 0x0

    :goto_6
    move-object/from16 v16, v2

    .line 48
    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    if-nez v13, :cond_d

    .line 49
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    :cond_d
    move/from16 v16, v13

    .line 50
    :cond_e
    iget-wide v13, v1, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    invoke-virtual {v2, v3, v13, v14}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v13

    if-ltz v13, :cond_19

    .line 51
    iget v14, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v14, :cond_f

    const/16 v17, 0x0

    goto :goto_7

    :cond_f
    move/from16 v17, v4

    :goto_7
    if-lez v14, :cond_10

    if-eqz v7, :cond_10

    move/from16 p1, v12

    const-wide/16 v11, 0x0

    .line 52
    invoke-virtual {v6, v11, v12, v15}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 53
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 54
    invoke-virtual {v2, v10, v4, v4, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 55
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 56
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 57
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v23

    move/from16 v12, p1

    move/from16 v11, v17

    const/4 v7, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    goto :goto_4

    :cond_10
    move/from16 p1, v12

    .line 58
    aget-object v4, v23, v13

    .line 59
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v12

    .line 60
    iget v4, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    if-lt v4, v15, :cond_13

    const/4 v4, 0x0

    .line 61
    :goto_8
    invoke-virtual {v12}, Ljava/nio/ShortBuffer;->limit()I

    move-result v14

    sub-int/2addr v14, v9

    if-lt v4, v14, :cond_11

    move/from16 v12, p1

    move v14, v7

    move-object/from16 v18, v8

    goto :goto_b

    .line 62
    :cond_11
    invoke-virtual {v12, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v14

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v12, v11}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v11

    add-int/2addr v14, v11

    int-to-short v11, v14

    .line 63
    div-int/2addr v11, v15

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-short v11, v11

    if-le v11, v5, :cond_12

    add-int v12, p1, v4

    move v14, v7

    move-object/from16 v18, v8

    int-to-long v7, v12

    .line 64
    iput-wide v7, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    goto :goto_a

    :cond_12
    move v14, v7

    move-object/from16 v18, v8

    add-int/2addr v4, v9

    goto :goto_8

    :cond_13
    move v14, v7

    move-object/from16 v18, v8

    const/4 v4, 0x0

    .line 65
    :goto_9
    invoke-virtual {v12}, Ljava/nio/ShortBuffer;->limit()I

    move-result v7

    sub-int/2addr v7, v9

    if-lt v4, v7, :cond_14

    move/from16 v12, p1

    goto :goto_b

    .line 66
    :cond_14
    invoke-virtual {v12, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v7

    if-le v7, v5, :cond_18

    add-int v12, p1, v4

    int-to-long v7, v12

    .line 67
    iput-wide v7, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    :goto_a
    const/16 v24, 0x1

    const/16 v25, 0x1

    :goto_b
    if-nez v25, :cond_15

    add-int/2addr v12, v4

    :cond_15
    const/4 v4, 0x0

    .line 68
    invoke-virtual {v2, v13, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    int-to-long v7, v12

    mul-long v26, v26, v7

    .line 69
    iget v4, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    iget v13, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    mul-int/2addr v4, v13

    move/from16 v19, v12

    int-to-long v11, v4

    div-long v26, v26, v11

    cmp-long v4, v26, p3

    if-ltz v4, :cond_16

    .line 70
    iput-wide v7, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    const/16 v16, 0x1

    .line 71
    :cond_16
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_17

    .line 72
    iput-wide v7, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    move v7, v14

    move/from16 v11, v17

    move-object/from16 v8, v18

    move/from16 v12, v19

    const-wide/16 v13, 0x0

    const/16 v24, 0x1

    goto/16 :goto_4

    :cond_17
    move v7, v14

    move/from16 v11, v17

    move-object/from16 v8, v18

    move/from16 v12, v19

    goto :goto_c

    :cond_18
    add-int/2addr v4, v9

    goto :goto_9

    :cond_19
    move v14, v7

    move-object/from16 v18, v8

    move/from16 p1, v12

    const/4 v7, -0x3

    if-ne v13, v7, :cond_1a

    .line 73
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v23

    :cond_1a
    move/from16 v12, p1

    move v11, v4

    move v7, v14

    move-object/from16 v8, v18

    :goto_c
    const-wide/16 v13, 0x0

    goto/16 :goto_4

    :cond_1b
    :goto_d
    move v14, v7

    move-object/from16 v18, v8

    move/from16 p1, v12

    move/from16 v11, p1

    if-nez v25, :cond_1c

    int-to-long v7, v11

    .line 74
    iput-wide v7, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 75
    :cond_1c
    div-long v7, p3, v26

    .line 76
    iget v12, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    mul-int/lit8 v12, v12, 0x14

    iget v13, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    mul-int/2addr v12, v13

    new-array v12, v12, [S

    const-wide/16 v29, 0x1

    move v13, v11

    move v11, v14

    move-wide/from16 v31, v29

    move-object v14, v12

    const/4 v12, 0x0

    :goto_e
    cmp-long v16, v31, v7

    if-lez v16, :cond_1e

    if-nez v12, :cond_1d

    int-to-long v3, v13

    .line 77
    iput-wide v3, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    .line 78
    :cond_1d
    iget-wide v3, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    iget v5, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    iget v7, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    invoke-direct {v1, v3, v4, v5, v7}, Lcom/samsung/android/media/mir/SemSilenceDetector;->byteOffsetToTimeUs(JII)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 79
    iget-wide v3, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    iget v5, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    iget v7, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    invoke-direct {v1, v3, v4, v5, v7}, Lcom/samsung/android/media/mir/SemSilenceDetector;->byteOffsetToTimeUs(JII)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    move-object v4, v2

    goto/16 :goto_19

    .line 80
    :cond_1e
    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V

    move v13, v5

    .line 81
    iget-wide v4, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J

    mul-long v16, v26, v31

    sub-long v16, v4, v16

    const-wide/16 v33, 0x0

    cmp-long v19, v16, v33

    if-gez v19, :cond_1f

    goto :goto_f

    :cond_1f
    move-wide/from16 v4, v16

    .line 82
    :goto_f
    invoke-virtual {v6, v4, v5, v15}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-object/from16 v36, v14

    move-object/from16 v24, v18

    move-object/from16 v25, v23

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v35, 0x0

    move/from16 v23, v11

    const/4 v11, 0x0

    :goto_10
    if-nez v14, :cond_2b

    const/16 v15, 0x32

    if-lt v11, v15, :cond_20

    goto/16 :goto_14

    :cond_20
    add-int/lit8 v37, v11, 0x1

    move-wide/from16 p3, v7

    if-nez v16, :cond_24

    .line 83
    iget-wide v7, v1, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    invoke-virtual {v2, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v17

    if-ltz v17, :cond_24

    .line 84
    aget-object v7, v24, v17

    const/4 v8, 0x0

    .line 85
    invoke-virtual {v6, v7, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    if-gez v7, :cond_21

    move-wide/from16 v20, v33

    const/4 v7, 0x1

    const/16 v19, 0x0

    goto :goto_11

    .line 86
    :cond_21
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v18

    move-wide/from16 v20, v18

    move/from16 v19, v7

    move/from16 v7, v16

    :goto_11
    const/16 v18, 0x0

    if-eqz v7, :cond_22

    move/from16 v22, v28

    goto :goto_12

    :cond_22
    const/16 v22, 0x0

    :goto_12
    move-object/from16 v16, v2

    .line 87
    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    if-nez v7, :cond_23

    .line 88
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    :cond_23
    move/from16 v16, v7

    .line 89
    :cond_24
    iget-wide v7, v1, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    invoke-virtual {v2, v3, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    if-ltz v7, :cond_28

    .line 90
    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v8, :cond_25

    const/16 v37, 0x0

    :cond_25
    if-lez v8, :cond_26

    if-eqz v23, :cond_26

    const/4 v8, 0x2

    .line 91
    invoke-virtual {v6, v4, v5, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 92
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 93
    invoke-virtual {v2, v10, v7, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 94
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 95
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v24

    .line 96
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v25

    move-wide/from16 v7, p3

    move/from16 v11, v37

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v23, 0x0

    goto :goto_10

    .line 97
    :cond_26
    aget-object v8, v25, v7

    .line 98
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v8

    .line 99
    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->limit()I

    move-result v11

    move/from16 v15, v35

    add-int/2addr v11, v15

    move-wide/from16 v18, v4

    move-object/from16 v1, v36

    array-length v4, v1

    if-lt v11, v4, :cond_27

    .line 100
    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->limit()I

    move-result v4

    add-int/2addr v4, v15

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v36

    move-object/from16 v1, v36

    .line 101
    :cond_27
    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->limit()I

    move-result v4

    invoke-virtual {v8, v1, v15, v4}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 102
    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->limit()I

    move-result v4

    add-int v35, v15, v4

    const/4 v4, 0x0

    .line 103
    invoke-virtual {v2, v7, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 104
    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    move-wide/from16 v7, p3

    move-object/from16 v36, v1

    if-eqz v5, :cond_2a

    move-wide/from16 v4, v18

    move/from16 v11, v37

    const/4 v14, 0x1

    goto :goto_13

    :cond_28
    move-wide/from16 v18, v4

    move/from16 v15, v35

    move-object/from16 v1, v36

    const/4 v4, 0x0

    const/4 v5, -0x3

    if-ne v7, v5, :cond_29

    .line 105
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_29
    move-wide/from16 v7, p3

    move-object/from16 v36, v1

    move/from16 v35, v15

    :cond_2a
    move-wide/from16 v4, v18

    move/from16 v11, v37

    :goto_13
    const/4 v15, 0x2

    move-object/from16 v1, p0

    goto/16 :goto_10

    :cond_2b
    :goto_14
    move-wide/from16 p3, v7

    move/from16 v15, v35

    move-object/from16 v1, v36

    const/4 v4, 0x0

    const/4 v5, -0x3

    .line 106
    iget v7, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2e

    sub-int v35, v15, v7

    move/from16 v7, v35

    :goto_15
    if-gt v7, v9, :cond_2c

    goto :goto_18

    .line 107
    :cond_2c
    aget-short v11, v1, v7

    add-int/lit8 v14, v7, 0x1

    aget-short v14, v1, v14

    add-int/2addr v11, v14

    int-to-short v11, v11

    .line 108
    div-int/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-short v11, v11

    if-le v11, v13, :cond_2d

    add-int/lit8 v35, v15, -0x1

    sub-int v7, v35, v7

    int-to-long v11, v7

    .line 109
    iput-wide v11, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    goto :goto_17

    :cond_2d
    sub-int/2addr v7, v9

    goto :goto_15

    :cond_2e
    sub-int v35, v15, v7

    move/from16 v7, v35

    :goto_16
    if-gt v7, v9, :cond_2f

    goto :goto_18

    .line 110
    :cond_2f
    aget-short v11, v1, v7

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v13, :cond_30

    add-int/lit8 v35, v15, -0x1

    sub-int v7, v35, v7

    int-to-long v11, v7

    .line 111
    iput-wide v11, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    :goto_17
    const/4 v12, 0x1

    :goto_18
    add-long v31, v31, v29

    move-object v14, v1

    move v5, v13

    move v13, v15

    move/from16 v11, v23

    move-object/from16 v18, v24

    move-object/from16 v23, v25

    const/16 v4, 0x32

    move-object/from16 v1, p0

    move v15, v8

    move-wide/from16 v7, p3

    goto/16 :goto_e

    :cond_30
    sub-int/2addr v7, v9

    goto :goto_16

    :cond_31
    const/4 v4, 0x0

    :goto_19
    if-eqz v4, :cond_32

    .line 112
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 113
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 114
    :cond_32
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    return-object v0

    :catch_0
    move-object v1, v4

    return-object v1

    :cond_33
    move-object v1, v4

    move v13, v5

    const/4 v4, 0x0

    add-int/lit8 v9, v9, 0x1

    move-object v4, v1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v2, v0

    .line 115
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method private decodeFrontBackJniOnly(Ljava/lang/String;ZJD)Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;
    .locals 7

    .line 1
    new-instance p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;-><init>(Lcom/samsung/android/media/mir/SemSilenceDetector;Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;)V

    .line 2
    new-instance p4, Landroid/media/MediaExtractor;

    invoke-direct {p4}, Landroid/media/MediaExtractor;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p4, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    invoke-virtual {p4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    const-string v3, "mime"

    const/4 v4, 0x1

    if-lt v1, v2, :cond_0

    move v1, v0

    move v2, v1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p4, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "audio/"

    .line 7
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v4

    :goto_1
    if-nez v2, :cond_1

    return-object p3

    .line 8
    :cond_1
    invoke-virtual {p4, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p3

    .line 9
    :cond_2
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    const-string v2, "sample-rate"

    .line 10
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    const-string v2, "channel-count"

    .line 11
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    const-string v2, "durationUs"

    .line 12
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 13
    iget-wide v5, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mMinDurationUs:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_3

    return-object p3

    .line 14
    :cond_3
    iget-object v1, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    .line 15
    sget-boolean v2, Lcom/samsung/android/media/mir/SemSilenceDetector;->SMSD_LOAD_LIBRARY:Z

    if-eqz v2, :cond_7

    const-string v2, "audio/x-ms-wma"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/mpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/aac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/mp4a-latm"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/flac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/raw"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/x-wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/vorbis"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "application/ogg"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemSilenceDetector;->init(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    .line 21
    invoke-direct {p0, p5, p6}, Lcom/samsung/android/media/mir/SemSilenceDetector;->getSilencePositionNative(D)[J

    move-result-object p1

    if-eqz p1, :cond_5

    .line 22
    aget-wide p5, p1, v0

    iput-wide p5, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 23
    aget-wide p5, p1, v4

    iput-wide p5, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    .line 24
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/media/mir/SemSilenceDetector;->deinit()I

    goto :goto_2

    .line 25
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/media/mir/SemSilenceDetector;->deinit()I

    :cond_7
    move-object p2, p3

    .line 26
    :goto_2
    invoke-virtual {p4}, Landroid/media/MediaExtractor;->release()V

    return-object p2

    :catch_0
    return-object p3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object p3
.end method

.method private native deinit()I
.end method

.method private native getSilencePositionNative(D)[J
.end method

.method private native init(Ljava/lang/String;)I
.end method

.method private shortTodB(S)D
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x40e0000000000000L    # 32768.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getSilencePosition(D)[J
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 1
    fill-array-data v0, :array_0

    .line 2
    iget-object v2, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mFilepath:Ljava/lang/String;

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    .line 3
    iget-wide v4, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mSearchDurationUs:J

    move-object v1, p0

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/media/mir/SemSilenceDetector;->decodeFrontBackJniOnly(Ljava/lang/String;ZJD)Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;

    move-result-object p1

    const/4 p2, 0x1

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_1

    .line 4
    iget-wide v4, p1, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    aput-wide v4, v0, v3

    .line 5
    iget-wide v4, p1, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J

    iget-wide v6, p1, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    sub-long/2addr v4, v6

    aput-wide v4, v0, p2

    goto :goto_0

    :cond_1
    aput-wide v1, v0, v3

    aput-wide v1, v0, p2

    :goto_0
    aget-wide v4, v0, v3

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-ltz p1, :cond_2

    aget-wide v4, v0, p2

    cmp-long p1, v4, v6

    if-gez p1, :cond_3

    :cond_2
    aput-wide v1, v0, v3

    aput-wide v1, v0, p2

    :cond_3
    return-object v0

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mFilepath:Ljava/lang/String;

    return-void
.end method
