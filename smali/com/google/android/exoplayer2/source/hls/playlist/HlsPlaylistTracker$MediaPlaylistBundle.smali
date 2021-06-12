.class final Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaPlaylistBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
        "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private final c:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final d:Lcom/google/android/exoplayer2/upstream/ParsingLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:Z

.field private k:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 4

    .line 487
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 489
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "HlsPlaylistTracker:MediaPlaylist"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 490
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    .line 491
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;->a(I)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    .line 492
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->b(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->o:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->a:Ljava/lang/String;

    invoke-static {v3, p2}, Lcom/google/android/exoplayer2/util/UriUtil;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 493
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    move-result-object p1

    invoke-direct {v0, v1, p2, v2, p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->d:Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)J
    .locals 2

    .line 472
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->i:J

    return-wide v0
.end method

.method private a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 11

    .line 595
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 596
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 597
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->f:J

    .line 598
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v3, v0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 599
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    const/4 v4, 0x0

    if-eq v3, v0, :cond_0

    .line 600
    iput-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->k:Ljava/io/IOException;

    .line 601
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->g:J

    .line 602
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    invoke-static {p1, v3, v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    goto :goto_0

    .line 603
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->j:Z

    if-nez v3, :cond_2

    .line 604
    iget-wide v5, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->f:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v7, p1

    add-long/2addr v5, v7

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v7, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->f:J

    cmp-long p1, v5, v7

    if-gez p1, :cond_1

    .line 607
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->a:Ljava/lang/String;

    invoke-direct {p1, v3, v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->k:Ljava/io/IOException;

    .line 608
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Z

    goto :goto_0

    .line 609
    :cond_1
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->g:J

    sub-long v5, v1, v5

    long-to-double v5, v5

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v7, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->h:J

    .line 610
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide v7

    long-to-double v7, v7

    const-wide/high16 v9, 0x400c000000000000L    # 3.5

    mul-double v7, v7, v9

    cmpl-double p1, v5, v7

    if-lez p1, :cond_2

    .line 613
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->a:Ljava/lang/String;

    invoke-direct {p1, v3, v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->k:Ljava/io/IOException;

    .line 614
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Z

    .line 615
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->g()Z

    .line 620
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->h:J

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->h:J

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    :goto_1
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->h:J

    .line 625
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->g(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->j:Z

    if-nez p1, :cond_4

    .line 626
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->d()V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 0

    .line 472
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 591
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->d:Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->f(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)I

    move-result v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    return-void
.end method

.method private g()Z
    .locals 4

    .line 636
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->i:J

    .line 638
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->g(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->h(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 0

    .line 472
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v12, p6

    .line 566
    instance-of v13, v12, Lcom/google/android/exoplayer2/ParserException;

    .line 567
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    move-object v2, p1

    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 568
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e()J

    move-result-wide v8

    const/4 v4, 0x4

    move-object v2, v3

    move v3, v4

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v10, p6

    move v11, v13

    .line 567
    invoke-virtual/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    .line 569
    invoke-static/range {p6 .. p6}, Lcom/google/android/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->a(Ljava/lang/Exception;)Z

    move-result v1

    .line 570
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Z

    move-result v2

    if-eqz v13, :cond_0

    const/4 v1, 0x3

    return v1

    :cond_0
    if-eqz v1, :cond_1

    .line 575
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->g()Z

    move-result v1

    or-int/2addr v2, v1

    :cond_1
    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method public a()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 472
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 472
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ)V"
        }
    .end annotation

    .line 543
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    .line 544
    instance-of v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v1, :cond_0

    .line 545
    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 546
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v3, 0x4

    .line 547
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 546
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    goto :goto_0

    .line 549
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Loaded playlist has unexpected type."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->k:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJZ)V"
        }
    .end annotation

    .line 556
    iget-object p6, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {p6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 557
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e()J

    move-result-wide v7

    const/4 v2, 0x4

    move-wide v3, p2

    move-wide v5, p4

    .line 556
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    return-void
.end method

.method public b()Z
    .locals 9

    .line 501
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 504
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    .line 505
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->n:J

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 506
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->j:Z

    const/4 v6, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->a:I

    const/4 v7, 0x2

    if-eq v0, v7, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->a:I

    if-eq v0, v6, :cond_1

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->f:J

    add-long/2addr v7, v4

    cmp-long v0, v7, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public c()V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->d()V

    return-void
.end method

.method public d()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 517
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->i:J

    .line 518
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 522
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 523
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->h:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const/4 v2, 0x1

    .line 524
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->j:Z

    .line 525
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->d(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Landroid/os/Handler;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->h:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 527
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->f()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()V

    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->k:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->k:Ljava/io/IOException;

    throw v0
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 584
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->j:Z

    .line 585
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->f()V

    return-void
.end method
