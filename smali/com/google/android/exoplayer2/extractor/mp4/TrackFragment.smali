.class final Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

.field public b:J

.field public c:J

.field public d:J

.field public e:I

.field public f:I

.field public g:[J

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:[J

.field public l:[Z

.field public m:Z

.field public n:[Z

.field public o:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

.field public p:I

.field public q:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public r:Z

.field public s:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->e:I

    const-wide/16 v1, 0x0

    .line 116
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->s:J

    .line 117
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->m:Z

    .line 118
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->r:Z

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->o:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->q:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->q:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 160
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->q:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 162
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->p:I

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->m:Z

    .line 164
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->r:Z

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 131
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->e:I

    .line 132
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->f:I

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->h:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->h:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 134
    :cond_0
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->g:[J

    .line 135
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->h:[I

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->i:[I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->i:[I

    array-length p1, p1

    if-ge p1, p2, :cond_3

    :cond_2
    mul-int/lit8 p2, p2, 0x7d

    .line 140
    div-int/lit8 p2, p2, 0x64

    .line 141
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->i:[I

    .line 142
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->j:[I

    .line 143
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->k:[J

    .line 144
    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->l:[Z

    .line 145
    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->n:[Z

    :cond_3
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->q:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->p:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b([BII)V

    .line 174
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->q:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 175
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->r:Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->q:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->p:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    .line 185
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->q:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 186
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->r:Z

    return-void
.end method

.method public b(I)J
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->k:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->j:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method
