.class public final Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
.super Lcom/google/android/exoplayer2/source/chunk/Chunk;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private volatile j:I

.field private volatile k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V
    .locals 11
    .param p5    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x2

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    .line 55
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/chunk/Chunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p6

    .line 57
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->a:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->k:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->k:Z

    return v0
.end method

.method public c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->a(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 83
    :try_start_0
    new-instance v7, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 84
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V

    .line 85
    iget v0, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->j:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->a:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->a(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->a:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->a:Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 92
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->k:Z

    if-nez v4, :cond_1

    .line 93
    invoke-interface {v0, v7, v1}, Lcom/google/android/exoplayer2/extractor/Extractor;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eq v3, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 95
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-interface {v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    const/4 v4, 0x0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->j:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->a(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-void

    :catchall_0
    move-exception v0

    .line 97
    :try_start_3
    invoke-interface {v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->j:I

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 100
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->a(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v0
.end method

.method public f()J
    .locals 2

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->j:I

    int-to-long v0, v0

    return-wide v0
.end method
