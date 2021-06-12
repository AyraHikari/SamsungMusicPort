.class final Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;


# instance fields
.field private final a:J

.field private final b:I

.field private final c:J

.field private final d:I

.field private final e:J


# direct methods
.method public constructor <init>(JJLcom/google/android/exoplayer2/extractor/MpegAudioHeader;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->a:J

    .line 44
    iget v0, p5, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->c:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->b:I

    .line 45
    iget p5, p5, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->f:I

    iput p5, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->d:I

    const-wide/16 v0, -0x1

    cmp-long p5, p1, v0

    if-nez p5, :cond_0

    .line 47
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->c:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->e:J

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    sub-long p3, p1, p3

    .line 50
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->c:J

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->e:J

    :goto_0
    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->a:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    const-wide/16 v0, 0x8

    mul-long p1, p1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->d:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public a()Z
    .locals 4

    .line 57
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->e:J

    return-wide v0
.end method

.method public b(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 10

    .line 62
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 63
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->a:J

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 65
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->d:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0x7a1200

    div-long/2addr v0, v2

    .line 67
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->b:I

    int-to-long v2, v2

    mul-long v4, v0, v2

    const-wide/16 v6, 0x0

    .line 68
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->c:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->b:I

    int-to-long v2, v2

    sub-long v8, v0, v2

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->a(JJJ)J

    move-result-wide v0

    .line 69
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->a:J

    add-long/2addr v2, v0

    .line 70
    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->a(J)J

    move-result-wide v4

    .line 71
    new-instance v6, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v6, v4, v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v4, p1

    if-gez p1, :cond_2

    .line 72
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->c:J

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->b:I

    int-to-long v4, v4

    sub-long/2addr p1, v4

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->b:I

    int-to-long p1, p1

    add-long/2addr v2, p1

    .line 76
    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->a(J)J

    move-result-wide p1

    .line 77
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 78
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v6, v0}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 73
    :cond_2
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v6}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1
.end method
