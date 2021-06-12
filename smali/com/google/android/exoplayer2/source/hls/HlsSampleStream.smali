.class final Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 35
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->a:I

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->c:I

    return-void
.end method

.method private d()Z
    .locals 3

    .line 79
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->a:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->c:I

    .line 82
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->c:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->c:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->c:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->c:I

    .line 67
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x3

    :goto_0
    return p1
.end method

.method public a()V
    .locals 3

    .line 40
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->a:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b(I)V

    .line 42
    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->c:I

    :cond_0
    return-void
.end method

.method public a_(J)I
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->c:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(IJ)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Z
    .locals 2

    .line 50
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->c:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->d()Z

    .line 57
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->c:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->i()V

    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->b:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 59
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->f()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->a:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
