.class public final Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodId"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 99
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    .line 126
    iput p2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->b:I

    .line 127
    iput p3, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->c:I

    .line 128
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->d:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 6

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    .line 110
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(IIIJ)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 7

    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->b:I

    iget v4, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->c:I

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->d:J

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(IIIJ)V

    :goto_0
    return-object v0
.end method

.method public a()Z
    .locals 2

    .line 144
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 156
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 157
    iget v2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->b:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->c:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->d:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->d:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 166
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 167
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->b:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 168
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->c:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 169
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->d:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
