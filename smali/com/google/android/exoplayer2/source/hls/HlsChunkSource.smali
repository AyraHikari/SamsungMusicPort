.class Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private final b:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final c:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final d:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private final e:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private final f:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final g:Lcom/google/android/exoplayer2/source/TrackGroup;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:[B

.field private k:Ljava/io/IOException;

.field private l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private m:Z

.field private n:Landroid/net/Uri;

.field private o:[B

.field private p:Ljava/lang/String;

.field private q:[B

.field private r:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

.field private s:J

.field private t:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;",
            "[",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;",
            "Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 127
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->f:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 128
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->e:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 129
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->d:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 130
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->h:Ljava/util/List;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 131
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->s:J

    .line 132
    array-length p1, p3

    new-array p1, p1, [Lcom/google/android/exoplayer2/Format;

    .line 133
    array-length p2, p3

    new-array p2, p2, [I

    const/4 p5, 0x0

    .line 134
    :goto_0
    array-length p6, p3

    if-ge p5, p6, :cond_0

    .line 135
    aget-object p6, p3, p5

    iget-object p6, p6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->b:Lcom/google/android/exoplayer2/Format;

    aput-object p6, p1, p5

    .line 136
    aput p5, p2, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 138
    invoke-interface {p4, p3}, Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;->a(I)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->b:Lcom/google/android/exoplayer2/upstream/DataSource;

    const/4 p3, 0x3

    .line 139
    invoke-interface {p4, p3}, Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;->a(I)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->c:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 140
    new-instance p3, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->g:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 141
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->g:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {p1, p3, p2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    return-void
.end method

.method private a(J)J
    .locals 4

    .line 422
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->s:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 423
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->s:J

    sub-long v2, v0, p1

    :cond_1
    return-wide v2
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    .locals 9

    .line 432
    new-instance v8, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 433
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->c:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->e:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object p3, v0, p3

    iget-object v3, p3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->b:Lcom/google/android/exoplayer2/Format;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->j:[B

    move-object v0, p1

    move-object v2, v8

    move v4, p4

    move-object v5, p5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;[BLjava/lang/String;)V

    return-object p1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 5

    .line 439
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 440
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 445
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 446
    new-array v1, v2, [B

    .line 447
    array-length v3, v0

    if-le v3, v2, :cond_1

    array-length v3, v0

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 448
    :goto_1
    array-length v2, v1

    array-length v4, v0

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    array-length v4, v0

    sub-int/2addr v4, v3

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->n:Landroid/net/Uri;

    .line 452
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->o:[B

    .line 453
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->p:Ljava/lang/String;

    .line 454
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->q:[B

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 2

    .line 427
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->j:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->a()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->s:J

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->n:Landroid/net/Uri;

    .line 459
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->o:[B

    .line 460
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->p:Ljava/lang/String;

    .line 461
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->q:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->k:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->t:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->f:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->k:Ljava/io/IOException;

    throw v0
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 2

    .line 375
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_0

    .line 376
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 377
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->j:[B

    .line 378
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->b:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->a:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->a:Ljava/lang/String;

    .line 379
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->g()[B

    move-result-object p1

    .line 378
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Landroid/net/Uri;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;JJLcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V
    .locals 36

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v15, p6

    if-nez v0, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    .line 219
    :cond_0
    iget-object v3, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->g:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->d:Lcom/google/android/exoplayer2/Format;

    .line 220
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    sub-long v7, p4, v1

    .line 222
    invoke-direct {v6, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(J)J

    move-result-wide v9

    if-eqz v0, :cond_1

    .line 223
    iget-boolean v11, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->m:Z

    if-nez v11, :cond_1

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->e()J

    move-result-wide v11

    sub-long/2addr v7, v11

    const-wide/16 v13, 0x0

    .line 231
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v16, v9, v16

    if-eqz v16, :cond_1

    sub-long/2addr v9, v11

    .line 233
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    :cond_1
    move-wide v12, v9

    move-wide v10, v7

    .line 238
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v8, p2

    invoke-interface/range {v7 .. v13}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->a(JJJ)V

    .line 239
    iget-object v1, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->i()I

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    if-eq v3, v1, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 242
    :goto_1
    iget-object v9, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->e:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v9, v9, v1

    .line 243
    iget-object v10, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->f:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->b(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 244
    iput-object v9, v15, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->c:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 245
    iget-boolean v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->t:Z

    iget-object v1, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne v1, v9, :cond_3

    const/4 v2, 0x1

    :cond_3
    and-int/2addr v0, v2

    iput-boolean v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->t:Z

    .line 246
    iput-object v9, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    return-void

    .line 250
    :cond_4
    iget-object v10, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->f:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v10

    .line 251
    iget-boolean v11, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->i:Z

    iput-boolean v11, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->m:Z

    .line 253
    invoke-direct {v6, v10}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    if-eqz v0, :cond_6

    if-eqz v8, :cond_5

    goto :goto_3

    .line 283
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->g()J

    move-result-wide v3

    move-wide/from16 v20, v3

    move-object v12, v9

    move v3, v1

    :goto_2
    move-object v1, v10

    goto/16 :goto_9

    :cond_6
    :goto_3
    if-eqz v0, :cond_8

    .line 258
    iget-boolean v8, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->m:Z

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->g:J

    goto :goto_5

    :cond_8
    :goto_4
    move-wide/from16 v4, p4

    .line 260
    :goto_5
    iget-boolean v8, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->j:Z

    if-nez v8, :cond_9

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->a()J

    move-result-wide v11

    cmp-long v8, v4, v11

    if-ltz v8, :cond_9

    .line 262
    iget-wide v3, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->f:J

    iget-object v5, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v11, v5

    add-long/2addr v3, v11

    move-wide v4, v3

    goto :goto_8

    .line 266
    :cond_9
    iget-object v8, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->m:Ljava/util/List;

    iget-wide v11, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->c:J

    sub-long/2addr v4, v11

    .line 269
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->f:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 271
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->f()Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v5, 0x1

    .line 267
    :goto_7
    invoke-static {v8, v4, v7, v5}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v4

    int-to-long v4, v4

    iget-wide v11, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->f:J

    add-long/2addr v4, v11

    .line 273
    iget-wide v11, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->f:J

    cmp-long v8, v4, v11

    if-gez v8, :cond_c

    if-eqz v0, :cond_c

    .line 277
    iget-object v1, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->e:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v9, v1, v3

    .line 278
    iget-object v1, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->f:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v1

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->g()J

    move-result-wide v4

    move-object v10, v1

    move v1, v3

    :cond_c
    :goto_8
    move v3, v1

    move-wide/from16 v20, v4

    move-object v12, v9

    goto :goto_2

    .line 285
    :goto_9
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->f:J

    cmp-long v4, v20, v4

    if-gez v4, :cond_d

    .line 286
    new-instance v0, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->k:Ljava/io/IOException;

    return-void

    .line 290
    :cond_d
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->f:J

    sub-long v4, v20, v4

    long-to-int v4, v4

    .line 291
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_10

    .line 292
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->j:Z

    if-eqz v0, :cond_e

    .line 293
    iput-boolean v7, v15, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->b:Z

    goto :goto_a

    .line 295
    :cond_e
    iput-object v12, v15, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->c:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 296
    iget-boolean v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->t:Z

    iget-object v1, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne v1, v12, :cond_f

    const/4 v2, 0x1

    :cond_f
    and-int/2addr v0, v2

    iput-boolean v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->t:Z

    .line 297
    iput-object v12, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    :goto_a
    return-void

    .line 302
    :cond_10
    iput-boolean v2, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->t:Z

    const/4 v2, 0x0

    .line 303
    iput-object v2, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 306
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->m:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 309
    iget-object v5, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->f:Ljava/lang/String;

    if-eqz v5, :cond_12

    .line 310
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->o:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->f:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/google/android/exoplayer2/util/UriUtil;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 311
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->n:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 313
    iget-object v2, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->g:Ljava/lang/String;

    iget-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 314
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->b()I

    move-result v4

    iget-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->c()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v5, v7

    .line 313
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->a:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    return-void

    .line 317
    :cond_11
    iget-object v3, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->g:Ljava/lang/String;

    iget-object v7, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->p:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 318
    iget-object v3, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->g:Ljava/lang/String;

    iget-object v7, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->o:[B

    invoke-direct {v6, v5, v3, v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_b

    .line 321
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->e()V

    .line 325
    :cond_13
    :goto_b
    iget-object v3, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v3, :cond_14

    .line 327
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->o:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->a:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/util/UriUtil;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 328
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v7, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->h:J

    iget-wide v9, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->i:J

    const/16 v28, 0x0

    move-object/from16 v22, v2

    move-wide/from16 v24, v7

    move-wide/from16 v26, v9

    invoke-direct/range {v22 .. v28}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    :cond_14
    move-object v11, v2

    .line 333
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->c:J

    iget-object v5, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->f:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 334
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c()J

    move-result-wide v7

    sub-long/2addr v2, v7

    .line 335
    iget-wide v7, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->e:J

    add-long/2addr v2, v7

    move-wide/from16 v16, v2

    .line 336
    iget v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->e:I

    iget v7, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->d:I

    add-int/2addr v5, v7

    move/from16 v22, v5

    .line 338
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->d:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->a(I)Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    move-result-object v25

    .line 342
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->o:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->a:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/google/android/exoplayer2/util/UriUtil;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 343
    new-instance v26, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v10, v26

    iget-wide v7, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->h:J

    iget-wide v13, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->i:J

    const/16 v32, 0x0

    move-wide/from16 v28, v7

    move-wide/from16 v30, v13

    invoke-direct/range {v26 .. v32}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 345
    new-instance v5, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-object v7, v5

    iget-object v8, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->a:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v9, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->b:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v13, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->h:Ljava/util/List;

    iget-object v14, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 353
    invoke-interface {v14}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->b()I

    move-result v14

    iget-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 354
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->c()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v5

    move-object v5, v15

    move-object v15, v0

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    iget-wide v7, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->c:J

    add-long v18, v2, v7

    iget-boolean v0, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->j:Z

    move/from16 v23, v0

    iget-boolean v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->i:Z

    move/from16 v24, v0

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    iget-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->o:[B

    move-object/from16 v28, v0

    iget-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->q:[B

    move-object/from16 v29, v0

    move-object/from16 v26, p1

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    invoke-direct/range {v7 .. v29}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/util/List;ILjava/lang/Object;JJJIZZLcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;Lcom/google/android/exoplayer2/drm/DrmInitData;[B[B)V

    move-object/from16 v0, v33

    iput-object v0, v5, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->a:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->i:Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/io/IOException;)Z
    .locals 2

    if-eqz p2, :cond_0

    .line 393
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->g:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->d:Lcom/google/android/exoplayer2/Format;

    .line 394
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->c(I)I

    move-result p1

    .line 393
    invoke-static {p2, p1, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Z
    .locals 7

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->g:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->b:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 409
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->c(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v2

    .line 413
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->t:Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v4, 0x0

    if-ne v3, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->t:Z

    if-eqz p2, :cond_4

    .line 414
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    const-wide/32 v5, 0xea60

    .line 415
    invoke-interface {p1, v0, v5, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    return v2
.end method

.method public b()Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->g:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public c()Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->r:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->k:Ljava/io/IOException;

    return-void
.end method
