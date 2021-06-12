.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private final b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final c:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private final d:I

.field private final e:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final f:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final g:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private final i:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final j:Z

.field private k:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private l:I

.field private m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private o:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private p:Lcom/google/android/exoplayer2/source/SequenceableLoader;

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Z)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->a:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 78
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 79
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->c:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 80
    iput p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->d:I

    .line 81
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->e:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 82
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->f:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 83
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->i:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 84
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->j:Z

    const/4 p1, 0x0

    .line 85
    new-array p2, p1, [Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 86
    invoke-interface {p7, p2}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->a([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->p:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 87
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->g:Ljava/util/IdentityHashMap;

    .line 88
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->h:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 89
    new-array p2, p1, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 90
    new-array p1, p1, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 91
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a()V

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 12

    .line 496
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 497
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/MimeTypes;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 498
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/exoplayer2/Format;->b:I

    iget v7, p0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v8, p0, Lcom/google/android/exoplayer2/Format;->k:I

    iget v9, p0, Lcom/google/android/exoplayer2/Format;->l:F

    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/Format;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 518
    iget-object v2, v1, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    .line 519
    iget v3, v1, Lcom/google/android/exoplayer2/Format;->r:I

    .line 520
    iget v4, v1, Lcom/google/android/exoplayer2/Format;->x:I

    .line 521
    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    move-object v15, v1

    move-object v7, v2

    move v10, v3

    move v14, v4

    goto :goto_0

    .line 523
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v15, v1

    move-object v7, v2

    const/4 v10, -0x1

    const/4 v14, 0x0

    .line 525
    :goto_0
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/MimeTypes;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 526
    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    const/4 v9, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v8, p2

    invoke-static/range {v5 .. v15}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method private a(I[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;J)",
            "Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;"
        }
    .end annotation

    move-object v10, p0

    .line 489
    new-instance v7, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v1, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->a:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v2, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v4, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->c:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget-object v5, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->h:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    move-object v0, v7

    move-object v3, p2

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;Ljava/util/List;)V

    .line 491
    new-instance v11, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget-object v4, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->f:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget v8, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->d:I

    iget-object v9, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->e:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object v0, v11

    move v1, p1

    move-object v2, p0

    move-object v3, v7

    move-wide/from16 v5, p5

    move-object v7, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;-><init>(ILcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V

    return-object v11
.end method

.method private a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;J)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 401
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v3, v4, :cond_3

    .line 402
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 403
    iget-object v5, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->b:Lcom/google/android/exoplayer2/Format;

    .line 404
    iget v6, v5, Lcom/google/android/exoplayer2/Format;->k:I

    if-gtz v6, :cond_1

    iget-object v6, v5, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 406
    :cond_0
    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    invoke-static {v5, v11}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 407
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 405
    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v12, v1

    goto :goto_3

    .line 415
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 418
    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_5
    move-object v12, v0

    .line 422
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v11

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 423
    new-array v0, v9, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 424
    aget-object v0, v13, v9

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->b:Lcom/google/android/exoplayer2/Format;

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 425
    iget-object v3, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->d:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->e:Ljava/util/List;

    move-object v0, p0

    move-object v2, v13

    move-wide/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->a(I[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v0

    .line 427
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aput-object v0, v1, v9

    .line 428
    iget-boolean v1, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->j:Z

    if-eqz v1, :cond_f

    if-eqz v14, :cond_f

    .line 429
    invoke-static {v14, v10}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 430
    :goto_4
    invoke-static {v14, v11}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    .line 431
    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, -0x1

    if-eqz v1, :cond_b

    .line 433
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/Format;

    const/4 v5, 0x0

    .line 434
    :goto_6
    array-length v6, v1

    if-ge v5, v6, :cond_8

    .line 435
    aget-object v6, v13, v5

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->b:Lcom/google/android/exoplayer2/Format;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 437
    :cond_8
    new-instance v5, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v5, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_a

    .line 439
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->d:Lcom/google/android/exoplayer2/Format;

    if-nez v1, :cond_9

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->b:Ljava/util/List;

    .line 440
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 441
    :cond_9
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v2, v11, [Lcom/google/android/exoplayer2/Format;

    aget-object v5, v13, v9

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->b:Lcom/google/android/exoplayer2/Format;

    iget-object v6, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->d:Lcom/google/android/exoplayer2/Format;

    .line 443
    invoke-static {v5, v6, v4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    aput-object v5, v2, v9

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    .line 441
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_a
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->e:Ljava/util/List;

    if-eqz v1, :cond_d

    const/4 v2, 0x0

    .line 448
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_d

    .line 449
    new-instance v5, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v6, v11, [Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/Format;

    aput-object v8, v6, v9

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    if-eqz v2, :cond_e

    .line 454
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x0

    .line 455
    :goto_8
    array-length v5, v1

    if-ge v2, v5, :cond_c

    .line 456
    aget-object v5, v13, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->b:Lcom/google/android/exoplayer2/Format;

    .line 457
    iget-object v6, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->d:Lcom/google/android/exoplayer2/Format;

    iget v10, v5, Lcom/google/android/exoplayer2/Format;->b:I

    .line 458
    invoke-static {v5, v6, v10}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 461
    :cond_c
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_d
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v2, v11, [Lcom/google/android/exoplayer2/Format;

    const-string v5, "ID3"

    const-string v6, "application/id3"

    const/4 v8, 0x0

    .line 469
    invoke-static {v5, v6, v8, v4, v8}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    .line 475
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    new-array v4, v9, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 478
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    new-array v4, v11, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v1, v4, v9

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 477
    invoke-virtual {v0, v2, v9, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    goto :goto_9

    .line 464
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected codecs attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_f
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Z)V

    .line 483
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b()V

    :goto_9
    return-void
.end method

.method private d(J)V
    .locals 16

    move-object/from16 v7, p0

    .line 320
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->b()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v0

    .line 321
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->b:Ljava/util/List;

    .line 322
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->c:Ljava/util/List;

    .line 324
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x1

    add-int/2addr v1, v10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 325
    new-array v2, v1, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v2, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 326
    iput v1, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->l:I

    move-wide/from16 v11, p1

    .line 328
    invoke-direct {v7, v0, v11, v12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;J)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 334
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_1

    .line 335
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v1, 0x1

    .line 336
    new-array v2, v10, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aput-object v5, v2, v13

    const/4 v3, 0x0

    .line 341
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v13, v5

    move-wide/from16 v5, p1

    .line 337
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->a(I[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v0

    .line 343
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    add-int/lit8 v2, v15, 0x1

    aput-object v0, v1, v15

    .line 344
    iget-object v1, v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->b:Lcom/google/android/exoplayer2/Format;

    .line 345
    iget-boolean v3, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->j:Z

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 346
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    new-array v3, v10, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v5, v10, [Lcom/google/android/exoplayer2/Format;

    iget-object v6, v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->b:Lcom/google/android/exoplayer2/Format;

    const/4 v13, 0x0

    aput-object v6, v5, v13

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v4, v3, v13

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    sget-object v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, v1, v13, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    goto :goto_1

    .line 349
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b()V

    :goto_1
    add-int/lit8 v14, v14, 0x1

    move v15, v2

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 354
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 355
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v1, 0x3

    .line 356
    new-array v2, v10, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v0, 0x0

    aput-object v13, v2, v0

    const/4 v3, 0x0

    .line 361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    .line 357
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->a(I[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v0

    .line 363
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    add-int/lit8 v2, v15, 0x1

    aput-object v0, v1, v15

    .line 364
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    new-array v3, v10, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v5, v10, [Lcom/google/android/exoplayer2/Format;

    iget-object v6, v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->b:Lcom/google/android/exoplayer2/Format;

    const/4 v13, 0x0

    aput-object v6, v5, v13

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v4, v3, v13

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    sget-object v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, v1, v13, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    add-int/lit8 v8, v8, 0x1

    move v15, v2

    goto :goto_2

    .line 369
    :cond_2
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v0, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    return-void
.end method


# virtual methods
.method public a(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 0

    return-wide p1
.end method

.method public a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 125
    array-length v3, v1

    new-array v3, v3, [I

    .line 126
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 127
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 128
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->g:Ljava/util/IdentityHashMap;

    aget-object v9, v2, v6

    .line 129
    invoke-virtual {v7, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    aput v7, v3, v6

    .line 130
    aput v8, v4, v6

    .line 131
    aget-object v7, v1, v6

    if-eqz v7, :cond_2

    .line 132
    aget-object v7, v1, v6

    invoke-interface {v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->f()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    const/4 v9, 0x0

    .line 133
    :goto_2
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v10, v10

    if-ge v9, v10, :cond_2

    .line 134
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->f()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 135
    aput v9, v4, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 143
    :cond_3
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 145
    array-length v6, v1

    new-array v6, v6, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 146
    array-length v7, v1

    new-array v7, v7, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 147
    array-length v8, v1

    new-array v15, v8, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 149
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v8, v8

    new-array v13, v8, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 151
    :goto_4
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v8, v8

    if-ge v14, v8, :cond_10

    const/4 v8, 0x0

    .line 152
    :goto_5
    array-length v9, v1

    if-ge v8, v9, :cond_6

    .line 153
    aget v9, v3, v8

    const/4 v10, 0x0

    if-ne v9, v14, :cond_4

    aget-object v9, v2, v8

    goto :goto_6

    :cond_4
    move-object v9, v10

    :goto_6
    aput-object v9, v7, v8

    .line 154
    aget v9, v4, v8

    if-ne v9, v14, :cond_5

    aget-object v10, v1, v8

    :cond_5
    aput-object v10, v15, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 156
    :cond_6
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v11, v8, v14

    move-object v8, v11

    move-object v9, v15

    move-object/from16 v10, p2

    move-object v5, v11

    move-object v11, v7

    move v2, v12

    move-object/from16 v12, p4

    move/from16 v17, v2

    move-object/from16 v18, v13

    move v2, v14

    move-wide/from16 v13, p5

    move-object/from16 v19, v15

    move/from16 v15, v16

    .line 157
    invoke-virtual/range {v8 .. v15}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJZ)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 160
    :goto_7
    array-length v11, v1

    const/4 v12, 0x1

    if-ge v9, v11, :cond_b

    .line 161
    aget v11, v4, v9

    if-ne v11, v2, :cond_8

    .line 163
    aget-object v10, v7, v9

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    goto :goto_8

    :cond_7
    const/4 v10, 0x0

    :goto_8
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 164
    aget-object v10, v7, v9

    aput-object v10, v6, v9

    .line 166
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->g:Ljava/util/IdentityHashMap;

    aget-object v11, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_a

    .line 167
    :cond_8
    aget v11, v3, v9

    if-ne v11, v2, :cond_a

    .line 169
    aget-object v11, v7, v9

    if-nez v11, :cond_9

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    :goto_9
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    :cond_a
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_b
    if-eqz v10, :cond_f

    .line 173
    aput-object v5, v18, v17

    add-int/lit8 v9, v17, 0x1

    if-nez v17, :cond_d

    .line 177
    invoke-virtual {v5, v12}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Z)V

    if-nez v8, :cond_c

    .line 178
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v8, v8

    if-eqz v8, :cond_c

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const/4 v10, 0x0

    aget-object v8, v8, v10

    if-eq v5, v8, :cond_e

    goto :goto_b

    :cond_c
    const/4 v10, 0x0

    .line 182
    :goto_b
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->h:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->a()V

    move v12, v9

    const/16 v16, 0x1

    goto :goto_c

    :cond_d
    const/4 v10, 0x0

    .line 186
    invoke-virtual {v5, v10}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Z)V

    :cond_e
    move v12, v9

    goto :goto_c

    :cond_f
    const/4 v10, 0x0

    move/from16 v12, v17

    :goto_c
    add-int/lit8 v14, v2, 0x1

    move-object/from16 v13, v18

    move-object/from16 v15, v19

    move-object/from16 v2, p3

    goto/16 :goto_4

    :cond_10
    move/from16 v17, v12

    move-object/from16 v18, v13

    const/4 v10, 0x0

    .line 191
    array-length v1, v6

    move-object/from16 v2, p3

    invoke-static {v6, v10, v2, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v1, v18

    .line 193
    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 195
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->i:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 196
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->a([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->p:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    return-wide p5
.end method

.method public a(J)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->p:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->a(J)V

    return-void
.end method

.method public a(JZ)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 204
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->k:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 105
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 106
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->d(J)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->a(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 0

    .line 297
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->k:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->d(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Z
    .locals 5

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 311
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Z

    move-result v4

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->k:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return v2
.end method

.method public b(J)J
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b(JZ)Z

    move-result v0

    const/4 v1, 0x1

    .line 251
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->o:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->h:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->a()V

    :cond_1
    return-wide p1
.end method

.method public b()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 233
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->q:Z

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->e:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c()V

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->q:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public c(J)Z
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_1

    .line 217
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 218
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->p:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->c(J)Z

    move-result p1

    return p1
.end method

.method public c_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 112
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()J
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->p:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->p:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->b(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 97
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->h()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->e:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b()V

    return-void
.end method

.method public g()V
    .locals 11

    .line 270
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->l:I

    if-lez v0, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 276
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->f()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    iget v5, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    :cond_1
    new-array v0, v4, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 280
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->n:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 281
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->f()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:I

    move v8, v5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_2

    add-int/lit8 v9, v8, 0x1

    .line 283
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->f()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v10

    aput-object v10, v0, v8

    add-int/lit8 v5, v5, 0x1

    move v8, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_1

    .line 286
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->m:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->k:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->k:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method
