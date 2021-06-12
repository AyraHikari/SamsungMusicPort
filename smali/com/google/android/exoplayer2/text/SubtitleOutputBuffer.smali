.class public abstract Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
.super Lcom/google/android/exoplayer2/decoder/OutputBuffer;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# instance fields
.field private c:Lcom/google/android/exoplayer2/text/Subtitle;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->c:Lcom/google/android/exoplayer2/text/Subtitle;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->d:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/text/Subtitle;->a(J)I

    move-result p1

    return p1
.end method

.method public a(I)J
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->c:Lcom/google/android/exoplayer2/text/Subtitle;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/Subtitle;->a(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->d:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->a()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->c:Lcom/google/android/exoplayer2/text/Subtitle;

    return-void
.end method

.method public a(JLcom/google/android/exoplayer2/text/Subtitle;J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->a:J

    .line 41
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->c:Lcom/google/android/exoplayer2/text/Subtitle;

    const-wide p1, 0x7fffffffffffffffL

    cmp-long p1, p4, p1

    if-nez p1, :cond_0

    .line 42
    iget-wide p4, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->a:J

    :cond_0
    iput-wide p4, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->d:J

    return-void
.end method

.method public b()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->c:Lcom/google/android/exoplayer2/text/Subtitle;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/Subtitle;->b()I

    move-result v0

    return v0
.end method

.method public b(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->c:Lcom/google/android/exoplayer2/text/Subtitle;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->d:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/text/Subtitle;->b(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract e()V
.end method
