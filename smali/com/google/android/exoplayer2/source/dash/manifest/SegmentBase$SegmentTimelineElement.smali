.class public Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SegmentTimelineElement"
.end annotation


# instance fields
.field final a:J

.field final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->a:J

    .line 369
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->b:J

    return-void
.end method
