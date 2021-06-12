.class public Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
    }
.end annotation


# instance fields
.field private final d:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:F

.field private final i:F

.field private final j:J

.field private final k:Lcom/google/android/exoplayer2/util/Clock;

.field private l:F

.field private m:I

.field private n:I

.field private o:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJFFJLcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 235
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->d:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    const-wide/16 p1, 0x3e8

    mul-long p4, p4, p1

    .line 236
    iput-wide p4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->e:J

    mul-long p6, p6, p1

    .line 237
    iput-wide p6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->f:J

    mul-long p8, p8, p1

    .line 238
    iput-wide p8, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->g:J

    .line 239
    iput p10, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->h:F

    .line 240
    iput p11, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->i:F

    .line 242
    iput-wide p12, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->j:J

    .line 243
    iput-object p14, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->k:Lcom/google/android/exoplayer2/util/Clock;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 244
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->l:F

    const-wide/high16 p1, -0x8000000000000000L

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->a(J)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->m:I

    const/4 p1, 0x1

    .line 246
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->n:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 247
    iput-wide p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->o:J

    return-void
.end method

.method private a(J)I
    .locals 6

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->d:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->a()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->h:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 359
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->b:I

    if-ge v2, v4, :cond_3

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    .line 360
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->b(IJ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 361
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 362
    iget v3, v3, Lcom/google/android/exoplayer2/Format;->b:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->l:F

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v0

    if-gtz v3, :cond_1

    return v2

    :cond_1
    move v3, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private b(J)J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 373
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->e:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    long-to-float p1, p1

    .line 375
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->i:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    goto :goto_1

    :cond_1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->e:J

    :goto_1
    return-wide p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->m:I

    return v0
.end method

.method public a(JLjava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->k:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->a()J

    move-result-wide v0

    .line 311
    iget-wide v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->o:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->o:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->j:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 313
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 315
    :cond_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->o:J

    .line 316
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 320
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 321
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 322
    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->g:J

    sub-long/2addr v4, p1

    iget v6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->l:F

    .line 323
    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer2/util/Util;->b(JF)J

    move-result-wide v4

    .line 325
    iget-wide v6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->g:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    return v2

    .line 328
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->a(J)I

    move-result v0

    .line 329
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 334
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 335
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->d:Lcom/google/android/exoplayer2/Format;

    .line 336
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->g:J

    sub-long/2addr v5, p1

    .line 337
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->l:F

    .line 338
    invoke-static {v5, v6, v1}, Lcom/google/android/exoplayer2/util/Util;->b(JF)J

    move-result-wide v5

    .line 339
    iget-wide v7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->g:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->b:I

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->b:I

    if-ge v1, v5, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->k:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->k:I

    const/16 v6, 0x2d0

    if-ge v1, v6, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->j:I

    if-eq v1, v5, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->j:I

    const/16 v5, 0x500

    if-ge v1, v5, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->k:I

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->k:I

    if-ge v1, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public a(F)V
    .locals 0

    .line 257
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->l:F

    return-void
.end method

.method public a(JJJ)V
    .locals 3

    .line 263
    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->k:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->a()J

    move-result-wide p1

    .line 265
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->m:I

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->a(J)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->m:I

    .line 267
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->m:I

    if-ne v1, v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->b(IJ)Z

    move-result p1

    if-nez p1, :cond_2

    .line 273
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 274
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->m:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 275
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->b:I

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->b:I

    if-le v1, v2, :cond_1

    .line 276
    invoke-direct {p0, p5, p6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->b(J)J

    move-result-wide p5

    cmp-long p5, p3, p5

    if-gez p5, :cond_1

    .line 279
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->m:I

    goto :goto_0

    .line 280
    :cond_1
    iget p2, p2, Lcom/google/android/exoplayer2/Format;->b:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->b:I

    if-ge p2, p1, :cond_2

    iget-wide p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->f:J

    cmp-long p1, p3, p1

    if-ltz p1, :cond_2

    .line 284
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->m:I

    .line 288
    :cond_2
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->m:I

    if-eq p1, v0, :cond_3

    const/4 p1, 0x3

    .line 289
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->n:I

    :cond_3
    return-void
.end method

.method public b()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->n:I

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 252
    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->o:J

    return-void
.end method
