.class public Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;,
        Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;
    }
.end annotation


# instance fields
.field protected final a:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

.field private final b:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final c:[I

.field private final d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

.field private final e:I

.field private final f:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final g:J

.field private final h:I

.field private final i:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private k:I

.field private l:Ljava/io/IOException;

.field private m:Z

.field private n:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I[ILcom/google/android/exoplayer2/trackselection/TrackSelection;ILcom/google/android/exoplayer2/upstream/DataSource;JIZZLcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;)V
    .locals 18
    .param p13    # Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    .line 156
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->b:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    move-object/from16 v2, p2

    .line 157
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v3, p4

    .line 158
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->c:[I

    .line 159
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move/from16 v10, p6

    .line 160
    iput v10, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->e:I

    move-object/from16 v3, p7

    .line 161
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->f:Lcom/google/android/exoplayer2/upstream/DataSource;

    move/from16 v3, p3

    .line 162
    iput v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->k:I

    move-wide/from16 v4, p8

    .line 163
    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->g:J

    move/from16 v4, p10

    .line 164
    iput v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->h:I

    move-object/from16 v11, p13

    .line 165
    iput-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->i:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    .line 167
    invoke-virtual/range {p2 .. p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->c(I)J

    move-result-wide v12

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 168
    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->n:J

    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->b()Ljava/util/ArrayList;

    move-result-object v14

    .line 171
    invoke-interface/range {p5 .. p5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->g()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->a:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    const/4 v2, 0x0

    const/4 v15, 0x0

    .line 172
    :goto_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->a:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v2, v2

    if-ge v15, v2, :cond_0

    .line 173
    invoke-interface {v1, v15}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->b(I)I

    move-result v2

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 174
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->a:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    new-instance v16, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-object/from16 v2, v16

    move-wide v3, v12

    move/from16 v5, p6

    move/from16 v7, p11

    move/from16 v8, p12

    move-object/from16 v17, v9

    move-object/from16 v9, p13

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JILcom/google/android/exoplayer2/source/dash/manifest/Representation;ZZLcom/google/android/exoplayer2/extractor/TrackOutput;)V

    aput-object v16, v17, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(J)J
    .locals 5

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->n:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 422
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->n:J

    sub-long v1, v0, p1

    :cond_1
    return-wide v1
.end method

.method protected static a(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JIJ)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v13, p6

    .line 456
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->b:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 457
    invoke-virtual {v0, v13, v14}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->a(J)J

    move-result-wide v7

    .line 458
    invoke-virtual {v0, v13, v14}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->d(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v2

    .line 459
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->d:Ljava/lang/String;

    .line 460
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->a:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    if-nez v3, :cond_0

    .line 461
    invoke-virtual {v0, v13, v14}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->b(J)J

    move-result-wide v9

    .line 462
    new-instance v3, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a:J

    iget-wide v11, v2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    .line 463
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->f()Ljava/lang/String;

    move-result-object v21

    move-object v15, v3

    move-wide/from16 v17, v4

    move-wide/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 464
    new-instance v15, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v2, v3

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide v6, v7

    move-wide v8, v9

    move-wide/from16 v10, p6

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJILcom/google/android/exoplayer2/Format;)V

    return-object v15

    :cond_0
    const/4 v3, 0x1

    move-object v5, v2

    const/4 v15, 0x1

    move/from16 v2, p8

    :goto_0
    if-ge v3, v2, :cond_2

    int-to-long v9, v3

    add-long/2addr v9, v13

    .line 469
    invoke-virtual {v0, v9, v10}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->d(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v6

    .line 470
    invoke-virtual {v5, v6, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v5, v6

    goto :goto_0

    :cond_2
    :goto_1
    int-to-long v2, v15

    add-long/2addr v2, v13

    const-wide/16 v9, 0x1

    sub-long/2addr v2, v9

    .line 478
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->b(J)J

    move-result-wide v9

    .line 479
    new-instance v16, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v3, v16

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    iget-wide v11, v5, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a:J

    iget-wide v4, v5, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    .line 480
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->f()Ljava/lang/String;

    move-result-object v22

    move-wide/from16 v18, v11

    move-wide/from16 v20, v4

    invoke-direct/range {v16 .. v22}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 481
    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->e:J

    neg-long v1, v1

    move-wide/from16 v16, v1

    .line 482
    new-instance v19, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;

    move-object/from16 v1, v19

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->a:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object/from16 v18, v0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v11, p9

    move-wide/from16 v13, p6

    invoke-direct/range {v1 .. v18}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJIJLcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    return-object v19
.end method

.method protected static a(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .locals 8

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->b:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->d:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 433
    invoke-virtual {p5, p6, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p6

    if-nez p6, :cond_0

    move-object p6, p5

    .line 440
    :cond_0
    new-instance p5, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {p6, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-wide v3, p6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a:J

    iget-wide v5, p6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    iget-object p6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->b:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 441
    invoke-virtual {p6}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->f()Ljava/lang/String;

    move-result-object v7

    move-object v1, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 442
    new-instance p6, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->a:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object v1, p6

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    return-object p6
.end method

.method private a(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;J)V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->b(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->n:J

    return-void
.end method

.method private b()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->k:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->c:Ljava/util/List;

    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 400
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->c:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 401
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->c:Ljava/util/List;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private c()J
    .locals 6

    .line 413
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->g:J

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->g:J

    add-long/2addr v0, v4

    mul-long v0, v0, v2

    return-wide v0

    .line 416
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long v0, v0, v2

    return-wide v0
.end method


# virtual methods
.method public a(JLjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->l:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->a(JLjava/util/List;)I

    move-result p1

    return p1

    .line 231
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public a(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 11

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->a:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 189
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-eqz v4, :cond_1

    .line 190
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->c(J)J

    move-result-wide v0

    .line 191
    invoke-virtual {v3, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->a(J)J

    move-result-wide v7

    cmp-long v2, v7, p1

    if-gez v2, :cond_0

    .line 193
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 194
    invoke-virtual {v3, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->a(J)J

    move-result-wide v0

    move-wide v9, v0

    goto :goto_1

    :cond_0
    move-wide v9, v7

    :goto_1
    move-wide v4, p1

    move-object v6, p3

    .line 196
    invoke-static/range {v4 .. v10}, Lcom/google/android/exoplayer2/util/Util;->a(JLcom/google/android/exoplayer2/SeekParameters;JJ)J

    move-result-wide p1

    return-wide p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->l:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->b:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->a()V

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->l:Ljava/io/IOException;

    throw v0
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 3

    .line 347
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    if-eqz v0, :cond_0

    .line 348
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    .line 349
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->a:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->d:Lcom/google/android/exoplayer2/Format;

    .line 350
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    aget-object v0, v1, v0

    .line 354
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v1, :cond_0

    .line 355
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->a:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->b()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;

    check-cast v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->i:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->i:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->a(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JJLcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    .line 239
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->l:Ljava/io/IOException;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    sub-long v5, v9, v3

    .line 244
    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->a(J)J

    move-result-wide v7

    .line 245
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v12, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a:J

    .line 246
    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v12

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v14, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->k:I

    .line 247
    invoke-virtual {v2, v14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-wide v14, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->b:J

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v14

    add-long/2addr v12, v14

    add-long/2addr v12, v9

    .line 250
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->i:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->i:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    .line 251
    invoke-virtual {v2, v12, v13}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->a(J)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 256
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v3, p2

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->a(JJJ)V

    .line 258
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->a:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 259
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->a()I

    move-result v3

    aget-object v12, v2, v3

    .line 261
    iget-object v2, v12, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->a:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    if-eqz v2, :cond_5

    .line 262
    iget-object v2, v12, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->b:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 265
    iget-object v3, v12, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->a:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->c()[Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 266
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->c()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v4

    .line 268
    :goto_0
    iget-object v5, v12, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v5, :cond_3

    .line 269
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->d()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    .line 273
    :cond_4
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->f:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 274
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->b()I

    move-result v7

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 275
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->c()Ljava/lang/Object;

    move-result-object v8

    move-object v4, v12

    move-object v9, v3

    move-object v10, v2

    .line 273
    invoke-static/range {v4 .. v10}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->a(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->a:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    return-void

    .line 280
    :cond_5
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->b()I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_8

    .line 283
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->k:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v11, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->b:Z

    return-void

    .line 287
    :cond_8
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->a()J

    move-result-wide v5

    const/4 v7, -0x1

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v15, 0x1

    if-ne v2, v7, :cond_a

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->c()J

    move-result-wide v7

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a:J

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v2

    sub-long/2addr v7, v2

    .line 293
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->k:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->b:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v2

    sub-long/2addr v7, v2

    .line 295
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->f:J

    cmp-long v2, v2, v13

    if-eqz v2, :cond_9

    .line 296
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->f:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v2

    sub-long v2, v7, v2

    .line 298
    invoke-virtual {v12, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->c(J)J

    move-result-wide v2

    .line 297
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide v5, v2

    .line 302
    :cond_9
    invoke-virtual {v12, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->c(J)J

    move-result-wide v2

    sub-long/2addr v2, v15

    goto :goto_4

    :cond_a
    int-to-long v2, v2

    add-long/2addr v2, v5

    sub-long/2addr v2, v15

    :goto_4
    move-wide/from16 v19, v5

    .line 307
    invoke-direct {v0, v12, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->a(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;J)V

    if-nez p1, :cond_c

    .line 311
    invoke-virtual {v12, v9, v10}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->c(J)J

    move-result-wide v17

    move-wide/from16 v21, v2

    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/Util;->a(JJJ)J

    move-result-wide v4

    :cond_b
    move-wide/from16 v18, v4

    goto :goto_5

    .line 314
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->g()J

    move-result-wide v4

    cmp-long v6, v4, v19

    if-gez v6, :cond_b

    .line 317
    new-instance v1, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->l:Ljava/io/IOException;

    return-void

    :goto_5
    cmp-long v4, v18, v2

    if-gtz v4, :cond_f

    .line 322
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->m:Z

    if-eqz v5, :cond_d

    if-ltz v4, :cond_d

    goto :goto_7

    .line 329
    :cond_d
    iget v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->h:I

    int-to-long v4, v4

    sub-long v2, v2, v18

    add-long/2addr v2, v15

    .line 330
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    if-nez p1, :cond_e

    move-wide/from16 v21, v9

    goto :goto_6

    :cond_e
    move-wide/from16 v21, v13

    .line 332
    :goto_6
    iget-object v13, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->f:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget v14, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->e:I

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 337
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v15

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 338
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->b()I

    move-result v16

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 339
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->c()Ljava/lang/Object;

    move-result-object v17

    move/from16 v20, v2

    .line 333
    invoke-static/range {v12 .. v22}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->a(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JIJ)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->a:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    return-void

    .line 325
    :cond_f
    :goto_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    if-eqz v1, :cond_11

    iget v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->k:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_10

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    goto :goto_8

    :cond_11
    const/4 v3, 0x1

    :goto_8
    iput-boolean v3, v11, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->b:Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 4

    .line 206
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 207
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->k:I

    .line 208
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->k:I

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->c(I)J

    move-result-wide p1

    .line 209
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 210
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->a:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->b(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 212
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->a:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2, v2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->a(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 215
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->l:Ljava/io/IOException;

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z
    .locals 6

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 371
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->i:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->i:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    .line 372
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->b(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 376
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->j:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean p2, p2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    if-eqz p2, :cond_2

    instance-of p2, p3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz p2, :cond_2

    move-object p2, p3

    check-cast p2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget p2, p2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v1, 0x194

    if-ne p2, v1, :cond_2

    .line 379
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->a:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->d:Lcom/google/android/exoplayer2/Format;

    .line 380
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    aget-object p2, p2, v1

    .line 381
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->b()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_2

    .line 383
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->a()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 384
    move-object p2, p1

    check-cast p2, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->g()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-lez p2, :cond_2

    .line 385
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->m:Z

    return v0

    .line 391
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->d:Lcom/google/android/exoplayer2/Format;

    .line 392
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    .line 391
    invoke-static {p2, p1, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result p1

    return p1
.end method
