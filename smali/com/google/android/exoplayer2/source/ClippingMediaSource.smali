.class public final Lcom/google/android/exoplayer2/source/ClippingMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;,
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/MediaSource;

.field private final b:J

.field private final c:J

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/exoplayer2/Timeline$Window;

.field private i:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

.field private k:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

.field private l:J

.field private m:J


# direct methods
.method private a(Lcom/google/android/exoplayer2/Timeline;)V
    .locals 15

    move-object v1, p0

    .line 268
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->h:Lcom/google/android/exoplayer2/Timeline$Window;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 269
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->h:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->c()J

    move-result-wide v5

    .line 270
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->j:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->e:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->l:J

    sub-long/2addr v2, v5

    .line 290
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->c:J

    cmp-long v0, v9, v7

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

    sub-long/2addr v7, v5

    :goto_0
    move-wide v5, v2

    goto :goto_4

    .line 271
    :cond_2
    :goto_1
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->b:J

    .line 272
    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->c:J

    .line 273
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->f:Z

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->h:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->a()J

    move-result-wide v13

    add-long/2addr v9, v13

    add-long/2addr v11, v13

    :cond_3
    const/4 v0, 0x0

    add-long v13, v5, v9

    .line 278
    iput-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->l:J

    .line 279
    iget-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->c:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    add-long v7, v5, v11

    :goto_2
    iput-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

    .line 283
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_5

    .line 285
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->l:J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->a(JJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move-wide v5, v9

    move-wide v7, v11

    .line 296
    :goto_4
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;JJ)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->j:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->j:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->i:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 298
    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;J)J
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a(Ljava/lang/Void;J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected a(Ljava/lang/Void;J)J
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    return-wide v0

    .line 309
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->b:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    sub-long/2addr p2, v0

    .line 310
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 311
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->c:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p3, v2, v4

    if-eqz p3, :cond_1

    .line 312
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->c:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 8

    .line 229
    new-instance v7, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 231
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->d:Z

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->l:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;ZJJ)V

    .line 235
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public a()V
    .locals 1

    .line 250
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->a()V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    .line 252
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->j:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/ExoPlayer;Z)V
    .locals 0

    .line 215
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->a(Lcom/google/android/exoplayer2/ExoPlayer;Z)V

    .line 216
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a:Lcom/google/android/exoplayer2/source/MediaSource;

    check-cast p1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 243
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->e:Z

    if-nez p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->j:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->b:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a(Lcom/google/android/exoplayer2/Timeline;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 258
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-eqz p1, :cond_0

    return-void

    .line 261
    :cond_0
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->i:Ljava/lang/Object;

    .line 262
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    .line 224
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->b()V

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    throw v0
.end method
