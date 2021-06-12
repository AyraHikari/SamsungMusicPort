.class final Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 3

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 39
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 40
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->b()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 41
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->c:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 10

    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->b:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 47
    iget-object v2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->a:Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->b:Ljava/lang/Object;

    iget v4, p2, Lcom/google/android/exoplayer2/Timeline$Period;->c:I

    iget-wide v5, p2, Lcom/google/android/exoplayer2/Timeline$Period;->d:J

    .line 52
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline$Period;->c()J

    move-result-wide v7

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->c:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-object v1, p2

    .line 47
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/Timeline$Period;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/Timeline$Period;

    return-object p2
.end method

.method public a(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 0

    .line 60
    invoke-super/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->a(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p1

    .line 61
    iget-wide p2, p1, Lcom/google/android/exoplayer2/Timeline$Window;->i:J

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p2, p4

    if-nez p2, :cond_0

    .line 62
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->c:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide p2, p2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->f:J

    iput-wide p2, p1, Lcom/google/android/exoplayer2/Timeline$Window;->i:J

    :cond_0
    return-object p1
.end method
