.class final Lcom/google/android/exoplayer2/PlaybackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/exoplayer2/Timeline;

.field public final b:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:Z

.field public final h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field public volatile j:J

.field public volatile k:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;JLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 12

    .line 46
    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    .line 69
    iput-object p2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->b:Ljava/lang/Object;

    .line 70
    iput-object p3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 71
    iput-wide p4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->d:J

    .line 72
    iput-wide p6, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->e:J

    .line 73
    iput-wide p4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    .line 74
    iput-wide p4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->k:J

    .line 75
    iput p8, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    .line 76
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->g:Z

    .line 77
    iput-object p10, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 78
    iput-object p11, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/PlaybackInfo;)V
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    iput-wide v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    .line 178
    iget-wide v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->k:J

    iput-wide v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->k:J

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 13

    .line 96
    new-instance v12, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 100
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a(I)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->d:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->e:J

    iget v8, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->g:Z

    iget-object v10, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 107
    invoke-static {p0, v12}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/PlaybackInfo;)V

    return-object v12
.end method

.method public a(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 13

    .line 112
    new-instance v12, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->d:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->e:J

    iget v8, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->g:Z

    iget-object v10, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 123
    invoke-static {p0, v12}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/PlaybackInfo;)V

    return-object v12
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 14

    move-object v0, p0

    .line 83
    new-instance v13, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->b:Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v7, p4

    goto :goto_0

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    :goto_0
    iget v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->g:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object v1, v13

    move-object v4, p1

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    return-object v13
.end method

.method public a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 13

    .line 161
    new-instance v12, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->d:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->e:J

    iget v8, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->g:Z

    move-object v0, v12

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 172
    invoke-static {p0, v12}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/PlaybackInfo;)V

    return-object v12
.end method

.method public a(Z)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 13

    .line 144
    new-instance v12, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->d:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->e:J

    iget v8, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    iget-object v10, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object v0, v12

    move v9, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 155
    invoke-static {p0, v12}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/PlaybackInfo;)V

    return-object v12
.end method

.method public b(I)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 13

    .line 128
    new-instance v12, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->d:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->e:J

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->g:Z

    iget-object v10, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object v0, v12

    move v8, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 139
    invoke-static {p0, v12}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/PlaybackInfo;)V

    return-object v12
.end method
