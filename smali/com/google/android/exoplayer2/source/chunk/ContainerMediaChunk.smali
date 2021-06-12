.class public Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;
.super Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
.source "SourceFile"


# instance fields
.field private final k:I

.field private final l:J

.field private final m:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private volatile n:I

.field private volatile o:Z

.field private volatile p:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJIJLcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V
    .locals 3

    move-object v0, p0

    .line 72
    invoke-direct/range {p0 .. p13}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJ)V

    move/from16 v1, p14

    .line 82
    iput v1, v0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->k:I

    move-wide/from16 v1, p15

    .line 83
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->l:J

    move-object/from16 v1, p17

    .line 84
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->m:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->o:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->o:Z

    return v0
.end method

.method public final c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->n:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->a(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 120
    :try_start_0
    new-instance v7, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 121
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V

    .line 122
    iget v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->n:I

    if-nez v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->d()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    move-result-object v0

    .line 125
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->l:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->a(J)V

    .line 126
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->m:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->a:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->a:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->l:J

    const/4 v6, 0x0

    sub-long/2addr v2, v4

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->a(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->m:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->a:Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    .line 133
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->o:Z

    if-nez v3, :cond_2

    const/4 v2, 0x0

    .line 134
    invoke-interface {v0, v7, v2}, Lcom/google/android/exoplayer2/extractor/Extractor;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eq v2, v0, :cond_3

    const/4 v1, 0x1

    .line 136
    :cond_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :try_start_2
    invoke-interface {v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->n:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->a(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 143
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->p:Z

    return-void

    :catchall_0
    move-exception v0

    .line 138
    :try_start_3
    invoke-interface {v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->n:I

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 141
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->a(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v0
.end method

.method public final f()J
    .locals 2

    .line 99
    iget v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->n:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public g()J
    .locals 4

    .line 89
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->j:J

    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->p:Z

    return v0
.end method
