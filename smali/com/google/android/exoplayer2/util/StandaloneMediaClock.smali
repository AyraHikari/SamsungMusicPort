.class public final Lcom/google/android/exoplayer2/util/StandaloneMediaClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/Clock;

.field private b:Z

.field private c:J

.field private d:J

.field private e:Lcom/google/android/exoplayer2/PlaybackParameters;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->a:Lcom/google/android/exoplayer2/util/Clock;

    .line 41
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->a:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->e:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 2

    .line 93
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->b:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->a(J)V

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->e:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->b:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->a:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->d:J

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->b:Z

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 70
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->c:J

    .line 71
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->b:Z

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->a:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->d:J

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 58
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->b:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->a(J)V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->b:Z

    :cond_0
    return-void
.end method

.method public d()J
    .locals 6

    .line 78
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->c:J

    .line 79
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->b:Z

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->a:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/util/Clock;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->d:J

    sub-long/2addr v2, v4

    .line 81
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->e:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackParameters;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 82
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 84
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->e:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer2/PlaybackParameters;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public e()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->e:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object v0
.end method
