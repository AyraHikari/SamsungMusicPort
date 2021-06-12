.class final Lcom/google/android/exoplayer2/MediaPeriodInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z

.field public final g:Z


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 64
    iput-wide p2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->b:J

    .line 65
    iput-wide p4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->c:J

    .line 66
    iput-wide p6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->d:J

    .line 67
    iput-wide p8, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->e:J

    .line 68
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->f:Z

    .line 69
    iput-boolean p11, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->g:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 13

    .line 77
    new-instance v12, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 78
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a(I)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->b:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->c:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->d:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->e:J

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->f:Z

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->g:Z

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v12
.end method

.method public a(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 13

    .line 89
    new-instance v12, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->c:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->d:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->e:J

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->f:Z

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->g:Z

    move-object v0, v12

    move-wide v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v12
.end method
