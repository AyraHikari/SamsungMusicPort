.class final Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[J

.field public final c:[I

.field public final d:I

.field public final e:[J

.field public final f:[I

.field public final g:J


# direct methods
.method public constructor <init>([J[II[J[IJ)V
    .locals 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    array-length v0, p2

    array-length v1, p4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 65
    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 66
    array-length v0, p5

    array-length v1, p4

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 68
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->b:[J

    .line 69
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->c:[I

    .line 70
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->d:I

    .line 71
    iput-object p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->e:[J

    .line 72
    iput-object p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->f:[I

    .line 73
    iput-wide p6, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->g:J

    .line 74
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->a:I

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->e:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->a([JJZZ)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    .line 89
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->f:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public b(J)I
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->e:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->b([JJZZ)I

    move-result p1

    .line 105
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->e:[J

    array-length p2, p2

    if-ge p1, p2, :cond_1

    .line 106
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->f:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
