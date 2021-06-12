.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private final d:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final e:I

.field private final f:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z

.field private final h:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    .line 51
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->a(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;ZLjava/lang/Object;)V
    .locals 0
    .param p8    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;",
            "Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;",
            "Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;",
            "I",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->b:Landroid/net/Uri;

    .line 330
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->c:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 331
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->a:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 332
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->d:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 333
    iput p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->e:I

    .line 334
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->f:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 335
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->g:Z

    .line 336
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->h:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$1;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 10

    .line 354
    iget v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 355
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v6

    .line 356
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->a:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->c:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->e:I

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->d:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->g:Z

    move-object v1, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Z)V

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->d()V

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/ExoPlayer;Z)V
    .locals 7

    const/4 p1, 0x0

    .line 341
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v3

    .line 342
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->c:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->e:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->f:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    move-object v0, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;ILcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 344
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a()V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 369
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->f()V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 383
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->k:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->c:J

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_0

    :cond_0
    move-wide v10, v3

    .line 387
    :goto_0
    iget v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->a:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    iget v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->a:I

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v8, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v8, v10

    .line 392
    :goto_2
    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->b:J

    .line 393
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 394
    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->c:J

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 395
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c()J

    move-result-wide v16

    sub-long v16, v14, v16

    .line 396
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->j:Z

    if-eqz v2, :cond_3

    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->n:J

    add-long v14, v16, v14

    goto :goto_3

    :cond_3
    move-wide v14, v3

    .line 398
    :goto_3
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->m:Ljava/util/List;

    cmp-long v3, v12, v3

    if-nez v3, :cond_5

    .line 400
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v2, 0x0

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 401
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->e:J

    :goto_4
    move-wide/from16 v18, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v18, v12

    .line 403
    :goto_5
    new-instance v2, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->n:J

    const/16 v20, 0x1

    iget-boolean v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->j:Z

    xor-int/lit8 v21, v5, 0x1

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->h:Ljava/lang/Object;

    move-object v7, v2

    move-wide v12, v14

    move-wide v14, v3

    move-object/from16 v22, v5

    invoke-direct/range {v7 .. v22}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJZZLjava/lang/Object;)V

    goto :goto_7

    :cond_6
    cmp-long v2, v12, v3

    if-nez v2, :cond_7

    const-wide/16 v18, 0x0

    goto :goto_6

    :cond_7
    move-wide/from16 v18, v12

    .line 418
    :goto_6
    new-instance v2, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->n:J

    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->n:J

    const-wide/16 v16, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->h:Ljava/lang/Object;

    move-object v7, v2

    move-object/from16 v22, v3

    invoke-direct/range {v7 .. v22}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJZZLjava/lang/Object;)V

    .line 430
    :goto_7
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/HlsManifest;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->b()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/exoplayer2/source/hls/HlsManifest;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->a(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e()V

    return-void
.end method
