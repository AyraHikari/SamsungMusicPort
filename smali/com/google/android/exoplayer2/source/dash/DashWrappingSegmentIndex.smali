.class public final Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/ChunkIndex;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->a:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(J)J
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->a:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->e:[J

    long-to-int p1, p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public a(JJ)J
    .locals 0

    .line 64
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->a:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->a(J)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 0

    .line 53
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->a:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object p3, p3, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->d:[J

    long-to-int p1, p1

    aget-wide p1, p3, p1

    return-wide p1
.end method

.method public b(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 7

    .line 58
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->a:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->c:[J

    long-to-int p1, p1

    aget-wide v2, v0, p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->a:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->b:[I

    aget p1, p2, p1

    int-to-long v4, p1

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(J)I
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->a:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget p1, p1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->a:I

    return p1
.end method
