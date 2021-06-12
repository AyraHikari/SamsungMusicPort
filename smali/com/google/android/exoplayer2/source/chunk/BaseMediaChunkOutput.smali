.class final Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;


# instance fields
.field private final a:[I

.field private final b:[Lcom/google/android/exoplayer2/source/SampleQueue;


# direct methods
.method public constructor <init>([I[Lcom/google/android/exoplayer2/source/SampleQueue;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->a:[I

    .line 40
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->b:[Lcom/google/android/exoplayer2/source/SampleQueue;

    return-void
.end method


# virtual methods
.method public a(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 2

    const/4 p1, 0x0

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->a:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->a:[I

    aget v0, v0, p1

    if-ne p2, v0, :cond_0

    .line 47
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->b:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, p2, p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "BaseMediaChunkOutput"

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmatched track of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance p1, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    return-object p1
.end method

.method public a(J)V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->b:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a()[I
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->b:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->b:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->b:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->b:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->c()I

    move-result v2

    aput v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
