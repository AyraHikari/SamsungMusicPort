.class final Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
.super Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
.source "SourceFile"


# static fields
.field private static final m:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private volatile E:Z

.field private volatile F:Z

.field public final a:I

.field public final k:I

.field public final l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private final n:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final o:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final p:Z

.field private final q:Z

.field private final r:Z

.field private final s:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

.field private final t:Z

.field private final u:Lcom/google/android/exoplayer2/extractor/Extractor;

.field private final v:Z

.field private final w:Z

.field private final x:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

.field private final y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private z:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/util/List;ILjava/lang/Object;JJJIZZLcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;Lcom/google/android/exoplayer2/drm/DrmInitData;[B[B)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZZ",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "[B[B)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v10, p15

    move-object/from16 v11, p19

    move-object/from16 v0, p21

    move-object/from16 v1, p22

    .line 132
    invoke-static {v13, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->a(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    iget-object v3, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->b:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v4, p7

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move-wide/from16 v8, p11

    move v13, v10

    move-wide/from16 v10, p13

    .line 131
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 140
    iput v13, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->k:I

    .line 141
    iput-object v14, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->o:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 142
    iput-object v15, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move/from16 v0, p17

    .line 143
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->q:Z

    move-object/from16 v0, p18

    .line 144
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->s:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 146
    iget-object v1, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    instance-of v1, v1, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;

    iput-boolean v1, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->p:Z

    move/from16 v1, p16

    .line 147
    iput-boolean v1, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->r:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p19

    if-eqz v4, :cond_3

    .line 150
    iget-object v5, v4, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-eq v5, v15, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->t:Z

    .line 151
    iget v5, v4, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->k:I

    if-ne v5, v13, :cond_2

    iget-boolean v5, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->t:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->u:Lcom/google/android/exoplayer2/extractor/Extractor;

    goto :goto_2

    :cond_2
    :goto_1
    move-object v5, v3

    :goto_2
    move-object v6, v5

    move-object/from16 v5, p3

    goto :goto_3

    .line 154
    :cond_3
    iput-boolean v2, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->t:Z

    move-object/from16 v5, p3

    move-object v6, v3

    .line 156
    :goto_3
    iget-object v5, v5, Lcom/google/android/exoplayer2/upstream/DataSpec;->a:Landroid/net/Uri;

    iget-object v7, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->d:Lcom/google/android/exoplayer2/Format;

    move-object/from16 p7, p1

    move-object/from16 p8, v6

    move-object/from16 p9, v5

    move-object/from16 p10, v7

    move-object/from16 p11, p6

    move-object/from16 p12, p20

    move-object/from16 p13, p18

    invoke-interface/range {p7 .. p13}, Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;->a(Lcom/google/android/exoplayer2/extractor/Extractor;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Landroid/util/Pair;

    move-result-object v0

    .line 158
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/extractor/Extractor;

    iput-object v5, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->u:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 159
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->v:Z

    .line 160
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->u:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-ne v0, v6, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->w:Z

    .line 161
    iget-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->w:Z

    if-eqz v0, :cond_5

    if-eqz v14, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->D:Z

    .line 162
    iget-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->v:Z

    if-eqz v0, :cond_7

    if-eqz v4, :cond_6

    .line 163
    iget-object v0, v4, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    if-eqz v0, :cond_6

    .line 164
    iget-object v0, v4, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->x:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->x:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    .line 165
    iget-object v0, v4, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_6

    .line 167
    :cond_6
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;-><init>()V

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->x:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    .line 168
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_6

    .line 171
    :cond_7
    iput-object v3, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->x:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    .line 172
    iput-object v3, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    :goto_6
    move-object/from16 v0, p2

    .line 174
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->n:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 175
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->a:I

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 306
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->a()V

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b([BIIZ)Z

    move-result v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    return-wide v4

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a(I)V

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->k()I

    move-result v0

    .line 312
    sget v6, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->b:I

    if-eq v0, v6, :cond_1

    return-wide v4

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->t()I

    move-result v0

    add-int/lit8 v6, v0, 0xa

    .line 318
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->e()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 319
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    .line 320
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a(I)V

    .line 321
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    invoke-static {v7, v3, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    :cond_2
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v6, v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b([BIIZ)Z

    move-result p1

    if-nez p1, :cond_3

    return-wide v4

    .line 326
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->x:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->a([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    if-nez p1, :cond_4

    return-wide v4

    .line 330
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 332
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->a(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 333
    instance-of v6, v2, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    if-eqz v6, :cond_5

    .line 334
    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    const-string v6, "com.apple.streaming.transportStreamTimestamp"

    .line 335
    iget-object v7, v2, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 336
    iget-object p1, v2, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->b:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    const/16 v1, 0x8

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a(I)V

    .line 340
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->y:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->q()J

    move-result-wide v0

    const-wide v2, 0x1ffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-wide v4
.end method

.method private static a(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    if-eqz p1, :cond_0

    .line 356
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private d()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 228
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->D:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->o:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-nez v0, :cond_0

    goto :goto_1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->o:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->A:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->a(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 234
    :try_start_0
    new-instance v7, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->n:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->n:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 235
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 238
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->E:Z

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->u:Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Lcom/google/android/exoplayer2/extractor/Extractor;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 242
    :try_start_2
    invoke-interface {v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->o:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->A:I

    throw v0

    :cond_1
    invoke-interface {v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->o:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    const/4 v4, 0x0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->A:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->a(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->D:Z

    return-void

    :catchall_1
    move-exception v0

    .line 245
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->a(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method private i()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 257
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->p:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 259
    iget v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->B:I

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->B:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/upstream/DataSpec;->a(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    :cond_1
    const/4 v3, 0x0

    .line 264
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->q:Z

    if-nez v4, :cond_2

    .line 265
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->s:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->e()V

    goto :goto_1

    .line 266
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->s:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->a()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 268
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->s:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->g:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->a(J)V

    .line 271
    :cond_3
    :goto_1
    :try_start_0
    new-instance v4, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 272
    invoke-interface {v5, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v11

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V

    .line 273
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->v:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->C:Z

    if-nez v0, :cond_5

    .line 274
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v5

    .line 275
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->C:Z

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->z:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v7

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->s:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 277
    invoke-virtual {v1, v5, v6}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->b(J)J

    move-result-wide v5

    goto :goto_2

    :cond_4
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->g:J

    .line 276
    :goto_2
    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b(J)V

    :cond_5
    if-eqz v3, :cond_6

    .line 280
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->B:I

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_6
    :goto_3
    if-nez v2, :cond_7

    .line 284
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->E:Z

    if-nez v0, :cond_7

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->u:Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lcom/google/android/exoplayer2/extractor/Extractor;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 288
    :try_start_2
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->B:I

    throw v0

    :cond_7
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    const/4 v4, 0x0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->B:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->a(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->a(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->E:Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 3

    .line 185
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->z:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 186
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->a:I

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->t:Z

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->w:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(IZZ)V

    .line 187
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->w:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->u:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->a(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->E:Z

    return v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->d()V

    .line 217
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->E:Z

    if-nez v0, :cond_1

    .line 218
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->r:Z

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->i()V

    :cond_0
    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->F:Z

    :cond_1
    return-void
.end method

.method public f()J
    .locals 2

    .line 199
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->B:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->F:Z

    return v0
.end method
