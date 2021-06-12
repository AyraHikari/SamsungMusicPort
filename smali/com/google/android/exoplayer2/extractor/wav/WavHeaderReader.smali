.class final Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/wav/WavHeader;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 50
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 56
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v3

    .line 57
    iget v3, v3, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->a:I

    const-string v4, "RIFF"

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    return-object v5

    .line 61
    :cond_0
    iget-object v3, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    const/4 v4, 0x4

    const/4 v6, 0x0

    invoke-interface {v0, v3, v6, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c([BII)V

    .line 62
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 63
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v3

    const-string v7, "WAVE"

    .line 64
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v7

    if-eq v3, v7, :cond_1

    const-string v0, "WavHeaderReader"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported RIFF format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 70
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v3

    .line 71
    :goto_0
    iget v7, v3, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->a:I

    const-string v8, "fmt "

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 72
    iget-wide v7, v3, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->b:J

    long-to-int v3, v7

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c(I)V

    .line 73
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v3

    goto :goto_0

    .line 76
    :cond_2
    iget-wide v7, v3, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->b:J

    const-wide/16 v9, 0x10

    const/4 v11, 0x1

    cmp-long v7, v7, v9

    if-ltz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 77
    iget-object v7, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    invoke-interface {v0, v7, v6, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c([BII)V

    .line 78
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 79
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->i()I

    move-result v7

    .line 80
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->i()I

    move-result v13

    .line 81
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->v()I

    move-result v14

    .line 82
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->v()I

    move-result v15

    .line 83
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->i()I

    move-result v8

    .line 84
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->i()I

    move-result v1

    mul-int v9, v13, v1

    .line 86
    div-int/lit8 v9, v9, 0x8

    if-ne v8, v9, :cond_8

    if-eq v7, v11, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    const v4, 0xfffe

    if-eq v7, v4, :cond_6

    const-string v0, "WavHeaderReader"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported WAV format type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_4
    const/16 v9, 0x20

    if-ne v1, v9, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 96
    :cond_6
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->b(I)I

    move-result v4

    :goto_2
    move/from16 v18, v4

    if-nez v18, :cond_7

    const-string v0, "WavHeaderReader"

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported WAV bit depth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 112
    :cond_7
    iget-wide v3, v3, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->b:J

    long-to-int v3, v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c(I)V

    .line 114
    new-instance v0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    move-object v12, v0

    move/from16 v16, v8

    move/from16 v17, v1

    invoke-direct/range {v12 .. v18}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;-><init>(IIIIII)V

    return-object v0

    .line 88
    :cond_8
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected block alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/wav/WavHeader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->a()V

    .line 139
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 141
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    .line 142
    :goto_0
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->a:I

    const-string v4, "data"

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_2

    const-string v3, "WavHeaderReader"

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring unknown WAV chunk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x8

    .line 144
    iget-wide v5, v2, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->b:J

    add-long/2addr v5, v3

    .line 146
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->a:I

    const-string v4, "RIFF"

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_0

    const-wide/16 v5, 0xc

    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v5, v3

    if-gtz v3, :cond_1

    long-to-int v2, v5

    .line 152
    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    .line 153
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    goto :goto_0

    .line 150
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 156
    :cond_2
    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    .line 158
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v0

    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->b:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->a(JJ)V

    return-void
.end method
