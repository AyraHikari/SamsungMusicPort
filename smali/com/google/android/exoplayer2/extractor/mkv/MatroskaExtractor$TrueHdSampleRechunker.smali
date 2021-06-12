.class final Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrueHdSampleRechunker"
.end annotation


# instance fields
.field private final a:[B

.field private b:Z

.field private c:I

.field private d:I

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 1551
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->a:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1555
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->b:Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1560
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1561
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->a:[B

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c([BII)V

    .line 1562
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->a()V

    .line 1563
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->a:[B

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/Ac3Util;->b([B)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1566
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->b:Z

    .line 1567
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->c:I

    .line 1569
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->c:I

    if-nez p1, :cond_2

    .line 1571
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->f:I

    .line 1572
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->d:I

    .line 1574
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->d:I

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V
    .locals 8

    .line 1594
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->c:I

    if-lez v0, :cond_0

    .line 1595
    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->O:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->e:J

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->f:I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->d:I

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->g:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    const/4 p1, 0x0

    .line 1596
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->c:I

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;J)V
    .locals 7

    .line 1578
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 1581
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->c:I

    if-nez v0, :cond_1

    .line 1583
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->e:J

    .line 1585
    :cond_1
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->c:I

    const/16 p3, 0x10

    if-ge p2, p3, :cond_2

    return-void

    .line 1589
    :cond_2
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->O:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->e:J

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->f:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->d:I

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->g:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    const/4 p1, 0x0

    .line 1590
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->c:I

    return-void
.end method
