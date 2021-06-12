.class final Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkHeader"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->a:I

    .line 174
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->b:J

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 188
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c([BII)V

    .line 189
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 191
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result p0

    .line 192
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->n()J

    move-result-wide v0

    .line 194
    new-instance p1, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;-><init>(IJ)V

    return-object p1
.end method
