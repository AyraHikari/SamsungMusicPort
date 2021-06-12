.class Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;
.implements Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlacOggSeeker"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

.field private b:[J

.field private c:[J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;)V
    .locals 2

    .line 137
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 138
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->d:J

    .line 139
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->e:J

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->b(J)J

    move-result-wide p1

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->b:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->a([JJZZ)I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->b:[J

    aget-wide v0, v1, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->e:J

    return-wide p1
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 169
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->e:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_0

    .line 170
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->e:J

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    .line 171
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->e:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 5

    const/4 v0, 0x1

    .line 155
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 156
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->k()I

    move-result v0

    .line 157
    div-int/lit8 v0, v0, 0x12

    .line 158
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->b:[J

    .line 159
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->c:[J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 161
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->b:[J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->q()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 162
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->c:[J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->q()J

    move-result-wide v3

    aput-wide v3, v2, v1

    const/4 v2, 0x2

    .line 163
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->a(Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;)Lcom/google/android/exoplayer2/util/FlacStreamInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 9

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->b(J)J

    move-result-wide v0

    .line 198
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->b:[J

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3, v3}, Lcom/google/android/exoplayer2/util/Util;->a([JJZZ)I

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->b:[J

    aget-wide v4, v2, v0

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->a(J)J

    move-result-wide v1

    .line 200
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->d:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->c:[J

    aget-wide v7, v6, v0

    add-long/2addr v4, v7

    .line 201
    new-instance v6, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v6, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v1, p1

    if-gez p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->b:[J

    array-length p1, p1

    sub-int/2addr p1, v3

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->b:[J

    add-int/2addr v0, v3

    aget-wide v1, p2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->a(J)J

    move-result-wide p1

    .line 206
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->d:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->c:[J

    aget-wide v4, v3, v0

    add-long/2addr v1, v4

    .line 207
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 208
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v6, v0}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 203
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v6}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1
.end method

.method public c()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 0

    return-object p0
.end method

.method public c(J)V
    .locals 0

    .line 143
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->d:J

    return-void
.end method
