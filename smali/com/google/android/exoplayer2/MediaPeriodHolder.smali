.class final Lcom/google/android/exoplayer2/MediaPeriodHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field public final b:Ljava/lang/Object;

.field public final c:[Lcom/google/android/exoplayer2/source/SampleStream;

.field public final d:[Z

.field public e:J

.field public f:Z

.field public g:Z

.field public h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

.field public i:Lcom/google/android/exoplayer2/MediaPeriodHolder;

.field public j:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field private final l:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field private final m:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private final n:Lcom/google/android/exoplayer2/source/MediaSource;

.field private o:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/RendererCapabilities;JLcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaPeriodInfo;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->l:[Lcom/google/android/exoplayer2/RendererCapabilities;

    .line 77
    iget-wide v0, p8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->b:J

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->e:J

    .line 78
    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->m:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 79
    iput-object p6, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->n:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 80
    invoke-static {p7}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->b:Ljava/lang/Object;

    .line 81
    iput-object p8, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 82
    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/exoplayer2/source/SampleStream;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    .line 83
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->d:[Z

    .line 84
    iget-object p1, p8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p6, p1, p5}, Lcom/google/android/exoplayer2/source/MediaSource;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p3

    .line 85
    iget-wide p1, p8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->c:J

    const-wide/high16 p4, -0x8000000000000000L

    cmp-long p1, p1, p4

    if-eqz p1, :cond_0

    .line 86
    new-instance p1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    const/4 p4, 0x1

    const-wide/16 p5, 0x0

    iget-wide p7, p8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->c:J

    move-object p2, p1

    invoke-direct/range {p2 .. p8}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;ZJJ)V

    goto :goto_0

    :cond_0
    move-object p1, p3

    .line 93
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->o:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->o:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->c(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 236
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->o:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 237
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->o:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    if-eqz p1, :cond_1

    .line 238
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->o:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->b(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    :cond_1
    return-void
.end method

.method private a([Lcom/google/android/exoplayer2/source/SampleStream;)V
    .locals 3

    const/4 v0, 0x0

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->l:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->l:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->a()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 269
    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 3

    const/4 v0, 0x0

    .line 243
    :goto_0
    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->a:I

    if-ge v0, v1, :cond_1

    .line 244
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->a(I)Z

    move-result v1

    .line 245
    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->a(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 247
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->d()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b([Lcom/google/android/exoplayer2/source/SampleStream;)V
    .locals 3

    const/4 v0, 0x0

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->l:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->l:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->a()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 281
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    new-instance v1, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/EmptySampleStream;-><init>()V

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 3

    const/4 v0, 0x0

    .line 253
    :goto_0
    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->a:I

    if-ge v0, v1, :cond_1

    .line 254
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->a(I)Z

    move-result v1

    .line 255
    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->a(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 257
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->e()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->e:J

    return-wide v0
.end method

.method public a(J)J
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public a(JZ)J
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->l:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JZ[Z)J
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->a:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->d:[Z

    if-nez p3, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v5, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->o:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 184
    invoke-virtual {v4, v5, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a([Lcom/google/android/exoplayer2/source/SampleStream;)V

    .line 190
    iget-object p3, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 192
    iget-object p3, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p3, p3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 193
    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 195
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->a()[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->d:[Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    move-object v8, p4

    move-wide v9, p1

    .line 194
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/source/MediaPeriod;->a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide p1

    .line 200
    iget-object p4, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->b([Lcom/google/android/exoplayer2/source/SampleStream;)V

    .line 203
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->g:Z

    const/4 p4, 0x0

    .line 204
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    array-length v1, v1

    if-ge p4, v1, :cond_5

    .line 205
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v1, v1, p4

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->a(I)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 208
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->l:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v1, v1, p4

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->a()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 209
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->g:Z

    goto :goto_4

    .line 212
    :cond_2
    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->a(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    :cond_4
    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_5
    return-wide p1
.end method

.method public a(Z)J
    .locals 4

    .line 127
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->f:Z

    if-nez v0, :cond_0

    .line 128
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->b:J

    return-wide v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->e:J

    :cond_1
    return-wide v0
.end method

.method public a(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->f:Z

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->b()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->j:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 143
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->b(F)Z

    .line 144
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->b:J

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a(JZ)J

    move-result-wide v0

    .line 145
    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->e:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v4, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->b:J

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->e:J

    .line 146
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodInfo;->a(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    return-void
.end method

.method public b(J)J
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public b()Z
    .locals 4

    .line 109
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 110
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(F)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->m:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->l:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->j:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->a([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->o:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 166
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->a()[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 169
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->a(F)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public c()J
    .locals 2

    .line 137
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->f:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public c(J)V
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->f:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->b(J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->a(J)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->c:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->n:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    check-cast v1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->n:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    .line 228
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public d(J)V
    .locals 1

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->b(J)J

    move-result-wide p1

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->c(J)Z

    return-void
.end method
