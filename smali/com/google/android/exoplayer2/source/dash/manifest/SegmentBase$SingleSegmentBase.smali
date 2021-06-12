.class public Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
.super Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSegmentBase"
.end annotation


# instance fields
.field final d:J

.field final e:J


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    .line 88
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V
    .locals 0

    .line 82
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJ)V

    .line 83
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->d:J

    .line 84
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->e:J

    return-void
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 7

    .line 92
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->d:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->e:J

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    :goto_0
    return-object v0
.end method
