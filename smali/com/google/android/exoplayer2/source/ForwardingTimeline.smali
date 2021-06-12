.class public abstract Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "SourceFile"


# instance fields
.field protected final b:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->b:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method


# virtual methods
.method public a(IIZ)I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->b:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->a(IIZ)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;)I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->b:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a(Z)I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->b:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->a(Z)I

    move-result p1

    return p1
.end method

.method public a(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->b:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->b:Lcom/google/android/exoplayer2/Timeline;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->b:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->b()I

    move-result v0

    return v0
.end method

.method public b(IIZ)I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->b:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->b(IIZ)I

    move-result p1

    return p1
.end method

.method public b(Z)I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->b:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->b(Z)I

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->b:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->c()I

    move-result v0

    return v0
.end method
