.class public Lcom/samsung/android/media/mir/SemSilenceDetector;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "smsd"

    .line 579
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 580
    sput-boolean v0, Lcom/samsung/android/media/mir/SemSilenceDetector;->SMSD_LOAD_LIBRARY:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 582
    sput-boolean v0, Lcom/samsung/android/media/mir/SemSilenceDetector;->SMSD_LOAD_LIBRARY:Z

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 81
    iput-object v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mFilepath:Ljava/lang/String;

    const-wide/32 v0, 0x4c4b40

    .line 82
    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mSearchDurationUs:J

    const-wide/32 v0, 0x1c9c380

    .line 83
    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mMinDurationUs:J

    const-wide/16 v0, 0x1388

    .line 84
    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    .line 34
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

    .line 551
    div-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    int-to-long p3, p3

    div-long/2addr p1, p3

    return-wide p1
.end method

.method private dbToShort(D)S
    .locals 2

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 559
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    const-wide/high16 v0, 0x40e0000000000000L    # 32768.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    int-to-short p1, p1

    return p1
.end method

.method private decodeFrontBack(Ljava/lang/String;ZJD)Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;
    .locals 43

    move-object/from16 v1, p0

    move-wide/from16 v4, p5

    .line 183
    new-instance v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;-><init>(Lcom/samsung/android/media/mir/SemSilenceDetector;Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;)V

    .line 188
    invoke-direct {v1, v4, v5}, Lcom/samsung/android/media/mir/SemSilenceDetector;->dbToShort(D)S

    move-result v7

    .line 190
    new-instance v8, Landroid/media/MediaExtractor;

    invoke-direct {v8}, Landroid/media/MediaExtractor;-><init>()V

    move-object/from16 v9, p1

    .line 196
    :try_start_0
    invoke-virtual {v8, v9}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x0

    .line 207
    :goto_0
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v12

    const/4 v13, 0x1

    if-lt v11, v12, :cond_0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_1

    .line 208
    :cond_0
    invoke-virtual {v8, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    const-string v14, "mime"

    .line 209
    invoke-virtual {v12, v14}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "audio/"

    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_32

    move v12, v11

    const/4 v11, 0x1

    :goto_1
    if-nez v11, :cond_1

    return-object v6

    .line 225
    :cond_1
    invoke-virtual {v8, v12}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v11

    if-nez v11, :cond_2

    return-object v6

    :cond_2
    :try_start_1
    const-string v14, "mime"

    .line 233
    invoke-virtual {v11, v14}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    const-string v14, "sample-rate"

    .line 234
    invoke-virtual {v11, v14}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    iput v14, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    const-string v14, "channel-count"

    .line 235
    invoke-virtual {v11, v14}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    iput v14, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    const-string v14, "durationUs"

    .line 236
    invoke-virtual {v11, v14}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    iget-wide v14, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J

    move-object/from16 v16, v11

    iget-wide v10, v1, Lcom/samsung/android/media/mir/SemSilenceDetector;->mMinDurationUs:J

    cmp-long v10, v14, v10

    if-gtz v10, :cond_3

    return-object v6

    .line 252
    :cond_3
    iget-object v10, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    .line 254
    sget-boolean v11, Lcom/samsung/android/media/mir/SemSilenceDetector;->SMSD_LOAD_LIBRARY:Z

    if-eqz v11, :cond_7

    const-string v11, "audio/x-ms-wma"

    .line 255
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "audio/mpeg"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "audio/aac"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "audio/mp4a-latm"

    .line 256
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "audio/flac"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "audio/raw"

    .line 257
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "audio/x-wav"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "audio/vorbis"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "application/ogg"

    .line 258
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 259
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/media/mir/SemSilenceDetector;->init(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_6

    .line 261
    invoke-direct {v1, v4, v5}, Lcom/samsung/android/media/mir/SemSilenceDetector;->getSilencePositionNative(D)[J

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v5, 0x0

    .line 263
    aget-wide v9, v4, v5

    iput-wide v9, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 264
    aget-wide v9, v4, v13

    iput-wide v9, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    .line 267
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/media/mir/SemSilenceDetector;->deinit()I

    goto :goto_3

    .line 269
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/media/mir/SemSilenceDetector;->deinit()I

    const-wide/16 v4, -0x1

    .line 270
    iput-wide v4, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 271
    iput-wide v4, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    :cond_7
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_30

    .line 276
    iget-object v4, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    if-nez v4, :cond_8

    .line 279
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->release()V

    return-object v6

    :cond_8
    move-object/from16 v5, v16

    const/4 v9, 0x0

    .line 286
    invoke-virtual {v4, v5, v6, v6, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 287
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 288
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 289
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    if-eqz p2, :cond_9

    .line 291
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 292
    invoke-virtual {v4, v5, v6, v6, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 293
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 294
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 295
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 297
    :cond_9
    invoke-virtual {v8, v12}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 298
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 300
    iget v12, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    div-int/lit8 v12, v12, 0x64

    iget v15, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    mul-int v12, v12, v15

    const-wide/16 v13, 0x0

    const/4 v15, 0x2

    .line 302
    invoke-virtual {v8, v13, v14, v15}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move/from16 v27, p2

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v24, 0x0

    :goto_4
    const-wide/32 v29, 0xf4240

    const/16 v6, 0x32

    const/16 v31, 0x4

    if-nez v10, :cond_1b

    if-lt v11, v6, :cond_a

    goto/16 :goto_d

    :cond_a
    add-int/lit8 v11, v11, 0x1

    if-nez v17, :cond_e

    .line 310
    iget-wide v13, v1, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    invoke-virtual {v4, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v18

    if-ltz v18, :cond_e

    .line 312
    aget-object v6, v25, v18

    const/4 v13, 0x0

    .line 313
    invoke-virtual {v8, v6, v13}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    if-gez v6, :cond_b

    const/4 v6, 0x1

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    goto :goto_5

    .line 320
    :cond_b
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v13

    move/from16 v20, v6

    move-wide/from16 v21, v13

    move/from16 v6, v17

    :goto_5
    const/16 v19, 0x0

    if-eqz v6, :cond_c

    const/16 v23, 0x4

    goto :goto_6

    :cond_c
    const/16 v23, 0x0

    :goto_6
    move-object/from16 v17, v4

    .line 322
    invoke-virtual/range {v17 .. v23}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    if-nez v6, :cond_d

    .line 325
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->advance()Z

    :cond_d
    move/from16 v17, v6

    .line 329
    :cond_e
    iget-wide v13, v1, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    invoke-virtual {v4, v9, v13, v14}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    if-ltz v6, :cond_19

    .line 333
    iget v13, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v13, :cond_f

    const/4 v13, 0x0

    goto :goto_7

    :cond_f
    move v13, v11

    .line 336
    :goto_7
    iget v11, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v11, :cond_10

    if-eqz v27, :cond_10

    move/from16 v34, v10

    const-wide/16 v10, 0x0

    .line 340
    invoke-virtual {v8, v10, v11, v15}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 342
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 343
    invoke-virtual {v4, v5, v10, v10, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 344
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 345
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v25

    .line 346
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v26

    move v11, v13

    move/from16 v10, v34

    const-wide/16 v13, 0x0

    const/16 v17, 0x0

    const/16 v27, 0x0

    goto :goto_4

    :cond_10
    move/from16 v34, v10

    .line 350
    aget-object v10, v26, v6

    .line 351
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    .line 354
    iget v11, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    if-lt v11, v15, :cond_13

    const/4 v11, 0x0

    .line 356
    :goto_8
    invoke-virtual {v10}, Ljava/nio/ShortBuffer;->limit()I

    move-result v14

    sub-int/2addr v14, v12

    if-lt v11, v14, :cond_11

    move/from16 v10, v24

    goto :goto_b

    .line 357
    :cond_11
    invoke-virtual {v10, v11}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v14

    add-int/lit8 v15, v11, 0x1

    invoke-virtual {v10, v15}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v15

    add-int/2addr v14, v15

    int-to-short v14, v14

    const/4 v15, 0x2

    .line 358
    div-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-short v14, v14

    if-le v14, v7, :cond_12

    move/from16 v14, v24

    add-int v10, v14, v11

    int-to-long v14, v10

    .line 361
    iput-wide v14, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    :goto_9
    const/16 v16, 0x1

    const/16 v34, 0x1

    goto :goto_b

    :cond_12
    move/from16 v14, v24

    add-int/2addr v11, v12

    const/4 v15, 0x2

    goto :goto_8

    :cond_13
    move/from16 v14, v24

    const/4 v11, 0x0

    .line 368
    :goto_a
    invoke-virtual {v10}, Ljava/nio/ShortBuffer;->limit()I

    move-result v15

    sub-int/2addr v15, v12

    if-lt v11, v15, :cond_14

    move v10, v14

    goto :goto_b

    .line 369
    :cond_14
    invoke-virtual {v10, v11}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v15

    if-le v15, v7, :cond_18

    add-int v10, v14, v11

    int-to-long v14, v10

    .line 371
    iput-wide v14, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    goto :goto_9

    :goto_b
    if-nez v16, :cond_15

    add-int/2addr v10, v11

    :cond_15
    const/4 v11, 0x0

    .line 382
    invoke-virtual {v4, v6, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    int-to-long v14, v10

    mul-long v29, v29, v14

    .line 384
    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    iget v11, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    mul-int v6, v6, v11

    move/from16 v35, v10

    int-to-long v10, v6

    div-long v29, v29, v10

    cmp-long v6, v29, p3

    if-ltz v6, :cond_16

    .line 386
    iput-wide v14, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    const/16 v17, 0x1

    .line 390
    :cond_16
    iget v6, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_17

    .line 392
    iput-wide v14, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    move v11, v13

    move/from16 v24, v35

    const/4 v10, 0x1

    goto :goto_c

    :cond_17
    move v11, v13

    move/from16 v10, v34

    move/from16 v24, v35

    goto :goto_c

    :cond_18
    add-int/2addr v11, v12

    goto :goto_a

    :cond_19
    move/from16 v34, v10

    move/from16 v14, v24

    const/4 v15, -0x3

    if-ne v6, v15, :cond_1a

    .line 396
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v26

    :cond_1a
    move/from16 v24, v14

    move/from16 v10, v34

    :goto_c
    const-wide/16 v13, 0x0

    const/4 v15, 0x2

    goto/16 :goto_4

    :cond_1b
    :goto_d
    move/from16 v14, v24

    if-nez v16, :cond_1c

    int-to-long v10, v14

    .line 407
    iput-wide v10, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 412
    :cond_1c
    div-long v2, p3, v29

    .line 417
    iget v10, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    mul-int/lit8 v10, v10, 0x14

    iget v11, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    mul-int v10, v10, v11

    new-array v10, v10, [S

    const-wide/16 v35, 0x1

    move-object v15, v10

    move-wide/from16 v10, v35

    const/4 v13, 0x0

    :goto_e
    cmp-long v16, v10, v2

    if-lez v16, :cond_1e

    if-nez v13, :cond_1d

    int-to-long v2, v14

    .line 524
    iput-wide v2, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    .line 527
    :cond_1d
    iget-wide v2, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    iget v5, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/samsung/android/media/mir/SemSilenceDetector;->byteOffsetToTimeUs(JII)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 528
    iget-wide v2, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    iget v5, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/samsung/android/media/mir/SemSilenceDetector;->byteOffsetToTimeUs(JII)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    move-object/from16 v28, v4

    goto/16 :goto_18

    .line 419
    :cond_1e
    invoke-virtual {v4}, Landroid/media/MediaCodec;->flush()V

    move/from16 v37, v7

    .line 420
    iget-wide v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J

    mul-long v16, v29, v10

    sub-long v6, v6, v16

    const-wide/16 v32, 0x0

    cmp-long v14, v6, v32

    if-gez v14, :cond_1f

    .line 422
    iget-wide v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J

    :cond_1f
    const/4 v14, 0x2

    .line 425
    invoke-virtual {v8, v6, v7, v14}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-wide/from16 v38, v2

    move-object v3, v15

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_f
    if-nez v14, :cond_2a

    move/from16 v40, v13

    const/16 v13, 0x32

    if-lt v15, v13, :cond_20

    move-object/from16 v42, v5

    goto/16 :goto_13

    :cond_20
    add-int/lit8 v15, v15, 0x1

    if-nez v16, :cond_23

    move/from16 v41, v14

    .line 434
    iget-wide v13, v1, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    invoke-virtual {v4, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v18

    if-ltz v18, :cond_24

    .line 436
    aget-object v13, v25, v18

    const/4 v14, 0x0

    .line 437
    invoke-virtual {v8, v13, v14}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v13

    if-gez v13, :cond_21

    move-wide/from16 v21, v32

    const/16 v16, 0x1

    const/16 v20, 0x0

    goto :goto_10

    .line 444
    :cond_21
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v19

    move-wide/from16 v21, v19

    move/from16 v20, v13

    :goto_10
    const/16 v19, 0x0

    if-eqz v16, :cond_22

    const/16 v23, 0x4

    goto :goto_11

    :cond_22
    const/16 v23, 0x0

    :goto_11
    move-object/from16 v17, v4

    .line 446
    invoke-virtual/range {v17 .. v23}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    if-nez v16, :cond_24

    .line 449
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_12

    :cond_23
    move/from16 v41, v14

    .line 453
    :cond_24
    :goto_12
    iget-wide v13, v1, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    invoke-virtual {v4, v9, v13, v14}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v13

    if-ltz v13, :cond_28

    .line 457
    iget v14, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v14, :cond_25

    const/4 v15, 0x0

    .line 460
    :cond_25
    iget v14, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v14, :cond_26

    if-eqz v27, :cond_26

    const/4 v14, 0x2

    .line 464
    invoke-virtual {v8, v6, v7, v14}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 466
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 467
    invoke-virtual {v4, v5, v14, v14, v13}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 468
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 469
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v25

    .line 470
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v26

    move/from16 v13, v40

    move/from16 v14, v41

    const/16 v16, 0x0

    const/16 v27, 0x0

    goto :goto_f

    .line 473
    :cond_26
    aget-object v14, v26, v13

    .line 474
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 476
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v14

    add-int/2addr v14, v2

    move-object/from16 v42, v5

    array-length v5, v3

    if-lt v14, v5, :cond_27

    .line 477
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v3

    .line 479
    :cond_27
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v5

    invoke-virtual {v1, v3, v2, v5}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 480
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    add-int/2addr v2, v1

    const/4 v1, 0x0

    .line 481
    invoke-virtual {v4, v13, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 483
    iget v5, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_29

    move/from16 v13, v40

    move-object/from16 v5, v42

    move-object/from16 v1, p0

    const/4 v14, 0x1

    goto/16 :goto_f

    :cond_28
    move-object/from16 v42, v5

    const/4 v1, 0x0

    const/4 v5, -0x3

    if-ne v13, v5, :cond_29

    .line 488
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v26

    :cond_29
    move/from16 v13, v40

    move/from16 v14, v41

    move-object/from16 v5, v42

    move-object/from16 v1, p0

    goto/16 :goto_f

    :cond_2a
    move-object/from16 v42, v5

    move/from16 v40, v13

    :goto_13
    const/4 v1, 0x0

    const/4 v5, -0x3

    .line 499
    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2d

    .line 501
    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    sub-int v6, v2, v6

    :goto_14
    if-gt v6, v12, :cond_2b

    move/from16 v14, v37

    const/4 v13, 0x2

    goto :goto_17

    .line 502
    :cond_2b
    aget-short v7, v3, v6

    add-int/lit8 v13, v6, 0x1

    aget-short v13, v3, v13

    add-int/2addr v7, v13

    int-to-short v7, v7

    const/4 v13, 0x2

    .line 503
    div-int/2addr v7, v13

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-short v7, v7

    move/from16 v14, v37

    if-le v7, v14, :cond_2c

    add-int/lit8 v7, v2, -0x1

    sub-int/2addr v7, v6

    int-to-long v6, v7

    .line 505
    iput-wide v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    :goto_15
    const/16 v40, 0x1

    goto :goto_17

    :cond_2c
    sub-int/2addr v6, v12

    move/from16 v37, v14

    goto :goto_14

    :cond_2d
    move/from16 v14, v37

    const/4 v13, 0x2

    .line 512
    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    sub-int v6, v2, v6

    :goto_16
    if-gt v6, v12, :cond_2e

    goto :goto_17

    .line 513
    :cond_2e
    aget-short v7, v3, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v14, :cond_2f

    add-int/lit8 v7, v2, -0x1

    sub-int/2addr v7, v6

    int-to-long v6, v7

    .line 514
    iput-wide v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    goto :goto_15

    :goto_17
    const/4 v6, 0x0

    add-long v10, v10, v35

    move-object v15, v3

    move v7, v14

    move/from16 v13, v40

    move-object/from16 v5, v42

    move-object/from16 v1, p0

    const/16 v6, 0x32

    move v14, v2

    move-wide/from16 v2, v38

    goto/16 :goto_e

    :cond_2f
    sub-int/2addr v6, v12

    goto :goto_16

    :cond_30
    const/16 v28, 0x0

    :goto_18
    if-eqz v28, :cond_31

    .line 534
    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaCodec;->stop()V

    .line 535
    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaCodec;->release()V

    .line 539
    :cond_31
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->release()V

    return-object v0

    :catch_0
    return-object v6

    :cond_32
    move v14, v7

    const/4 v1, 0x0

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 198
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-object v6
.end method

.method private decodeFrontBackJniOnly(Ljava/lang/String;ZJD)Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;
    .locals 6

    .line 97
    new-instance p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;-><init>(Lcom/samsung/android/media/mir/SemSilenceDetector;Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;)V

    .line 98
    new-instance p4, Landroid/media/MediaExtractor;

    invoke-direct {p4}, Landroid/media/MediaExtractor;-><init>()V

    .line 101
    :try_start_0
    invoke-virtual {p4, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    :goto_0
    invoke-virtual {p4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_1

    .line 112
    :cond_0
    invoke-virtual {p4, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v4, "mime"

    .line 113
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "audio/"

    .line 114
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_1

    return-object p3

    .line 128
    :cond_1
    invoke-virtual {p4, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p3

    :cond_2
    :try_start_1
    const-string v2, "mime"

    .line 135
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    const-string v2, "sample-rate"

    .line 136
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    const-string v2, "channel-count"

    .line 137
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    const-string v2, "durationUs"

    .line 138
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    iget-wide v1, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J

    iget-wide v4, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mMinDurationUs:J

    cmp-long v1, v1, v4

    if-gtz v1, :cond_3

    return-object p3

    .line 152
    :cond_3
    iget-object v1, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    .line 153
    sget-boolean v2, Lcom/samsung/android/media/mir/SemSilenceDetector;->SMSD_LOAD_LIBRARY:Z

    if-eqz v2, :cond_7

    const-string v2, "audio/x-ms-wma"

    .line 154
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

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/flac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/raw"

    .line 156
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

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 158
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemSilenceDetector;->init(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    .line 160
    invoke-direct {p0, p5, p6}, Lcom/samsung/android/media/mir/SemSilenceDetector;->getSilencePositionNative(D)[J

    move-result-object p1

    if-eqz p1, :cond_5

    .line 162
    aget-wide p5, p1, v0

    iput-wide p5, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 163
    aget-wide p5, p1, v3

    iput-wide p5, p2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    .line 165
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/media/mir/SemSilenceDetector;->deinit()I

    move-object p3, p2

    goto :goto_2

    .line 167
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/media/mir/SemSilenceDetector;->deinit()I

    .line 175
    :cond_7
    :goto_2
    invoke-virtual {p4}, Landroid/media/MediaExtractor;->release()V

    return-object p3

    :catch_0
    return-object p3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 103
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

    .line 555
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x40e0000000000000L    # 32768.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double v0, v0, v2

    return-wide v0
.end method


# virtual methods
.method public getSilencePosition(D)[J
    .locals 9

    const/4 v0, 0x2

    .line 56
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 58
    iget-object v1, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mFilepath:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    .line 62
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mFilepath:Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mSearchDurationUs:J

    move-object v2, p0

    move-wide v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/media/mir/SemSilenceDetector;->decodeFrontBackJniOnly(Ljava/lang/String;ZJD)Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;

    move-result-object p1

    const-wide/16 v1, -0x1

    const/4 p2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 65
    iget-wide v4, p1, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    aput-wide v4, v0, v3

    .line 66
    iget-wide v4, p1, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J

    iget-wide v6, p1, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    sub-long/2addr v4, v6

    aput-wide v4, v0, p2

    goto :goto_0

    :cond_1
    aput-wide v1, v0, v3

    aput-wide v1, v0, p2

    .line 73
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

    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mFilepath:Ljava/lang/String;

    return-void
.end method
