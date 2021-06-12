.class final Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InitializationTrackSelection"
.end annotation


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V
    .locals 0

    .line 474
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    const/4 p2, 0x0

    .line 475
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 498
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->d:I

    return v0
.end method

.method public a(JJJ)V
    .locals 0

    .line 481
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 482
    iget p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->d:I

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->b(IJ)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 486
    :cond_0
    iget p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->b:I

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_2

    .line 487
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->b(IJ)Z

    move-result p4

    if-nez p4, :cond_1

    .line 488
    iput p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->d:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 493
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
