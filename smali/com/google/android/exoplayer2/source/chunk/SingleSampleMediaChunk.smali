.class public final Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;
.super Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
.source "SourceFile"


# instance fields
.field private final k:I

.field private final l:Lcom/google/android/exoplayer2/Format;

.field private volatile m:I

.field private volatile n:Z

.field private volatile o:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJILcom/google/android/exoplayer2/Format;)V
    .locals 15

    move-object v14, p0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v12, p10

    .line 64
    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJ)V

    move/from16 v0, p12

    .line 74
    iput v0, v14, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->k:I

    move-object/from16 v0, p13

    .line 75
    iput-object v0, v14, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->l:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->n:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->n:Z

    return v0
.end method

.method public c()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->m:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->a(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 109
    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->m:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    :cond_0
    move-wide v5, v0

    .line 111
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->m:I

    int-to-long v3, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->d()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 113
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->a(J)V

    .line 114
    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->k:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->a(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v4

    .line 115
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->l:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v4, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/Format;)V

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v3, v1, :cond_1

    .line 119
    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->m:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->m:I

    const v1, 0x7fffffff

    .line 120
    invoke-interface {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v3

    goto :goto_0

    .line 122
    :cond_1
    iget v8, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->m:I

    .line 123
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->g:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->a(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 127
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->o:Z

    return-void

    :catchall_0
    move-exception v0

    .line 125
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->a(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v0
.end method

.method public f()J
    .locals 2

    .line 86
    iget v0, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->m:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->o:Z

    return v0
.end method
