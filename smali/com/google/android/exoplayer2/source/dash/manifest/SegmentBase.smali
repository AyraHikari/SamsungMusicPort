.class public abstract Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;,
        Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;,
        Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;,
        Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;,
        Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

.field final b:J

.field final c:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->a:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 41
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->b:J

    .line 42
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 6

    .line 60
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->c:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->b:J

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->a:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-object p1
.end method
