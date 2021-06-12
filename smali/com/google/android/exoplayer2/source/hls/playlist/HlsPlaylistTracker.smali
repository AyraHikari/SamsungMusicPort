.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
        "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private final c:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;

.field private final g:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final j:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private k:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

.field private l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

.field private n:Z

.field private o:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;ILcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;",
            "Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;",
            "I",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a:Landroid/net/Uri;

    .line 146
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->b:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 147
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->j:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 148
    iput p4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->d:I

    .line 149
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->g:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

    .line 150
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 151
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->h:Ljava/util/List;

    .line 152
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "HlsPlaylistTracker:MasterPlaylist"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 153
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e:Ljava/util/IdentityHashMap;

    .line 154
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->f:Landroid/os/Handler;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 155
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->o:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->b:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    return-object p0
.end method

.method private a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 2

    .line 404
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    iget-boolean p2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->j:Z

    if-eqz p2, :cond_0

    .line 410
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->b()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1

    .line 415
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->b(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)J

    move-result-wide v0

    .line 416
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)I

    move-result p1

    .line 417
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->a(JI)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne p1, v0, :cond_1

    .line 379
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-nez p1, :cond_0

    .line 381
    iget-boolean p1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->j:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->n:Z

    .line 382
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->c:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->o:J

    .line 384
    :cond_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 385
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->g:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 387
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;->h()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;)V"
        }
    .end annotation

    .line 363
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 365
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 366
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    .line 367
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Z
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 397
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;

    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)J
    .locals 8

    .line 422
    iget-boolean v0, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->k:Z

    if-eqz v0, :cond_0

    .line 423
    iget-wide p1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->c:J

    return-wide p1

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->c:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-wide v0

    .line 430
    :cond_2
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 431
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->d(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 433
    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->c:J

    iget-wide v0, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->e:J

    add-long/2addr p1, v0

    return-wide p1

    :cond_3
    int-to-long v2, v2

    .line 434
    iget-wide v4, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->f:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->f:J

    sub-long/2addr v4, v6

    cmp-long p2, v2, v4

    if-nez p2, :cond_4

    .line 435
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->a()J

    move-result-wide p1

    return-wide p1

    :cond_4
    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->k:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    return-object p0
.end method

.method private c(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)I
    .locals 3

    .line 444
    iget-boolean v0, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->d:Z

    if-eqz v0, :cond_0

    .line 445
    iget p1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->e:I

    return p1

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->e:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    return v0

    .line 453
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->d(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 455
    iget p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->e:I

    iget v0, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->d:I

    add-int/2addr p1, v0

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->m:Ljava/util/List;

    .line 457
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget p2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->d:I

    sub-int/2addr p1, p2

    return p1

    :cond_3
    return v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private static d(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .locals 4

    .line 464
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->f:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->f:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 465
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->m:Ljava/util/List;

    .line 466
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->j:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    return-object p0
.end method

.method private e(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->k:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->a:Ljava/util/List;

    .line 352
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->m:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 359
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e:Ljava/util/IdentityHashMap;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->d()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->d:I

    return p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    return-object p0
.end method

.method private g()Z
    .locals 9

    .line 336
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->k:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->a:Ljava/util/List;

    .line 337
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 338
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 340
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e:Ljava/util/IdentityHashMap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    .line 341
    invoke-static {v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)J

    move-result-wide v7

    cmp-long v7, v2, v7

    if-lez v7, :cond_0

    .line 342
    invoke-static {v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->b(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 343
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->d()V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->g()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 0

    .line 41
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 13
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

    move-object/from16 v9, p6

    .line 327
    instance-of v11, v9, Lcom/google/android/exoplayer2/ParserException;

    move-object v12, p0

    .line 328
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->j:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object v1, p1

    iget-object v2, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 329
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e()J

    move-result-wide v7

    const/4 v3, 0x4

    move-object v1, v2

    move v2, v3

    move-wide v3, p2

    move-wide/from16 v5, p4

    move v10, v11

    .line 328
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    if-eqz v11, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 5

    .line 180
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->b:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    const/4 v2, 0x4

    .line 181
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;->a(I)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 183
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->d:I

    invoke-virtual {v1, v0, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 41
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 41
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 288
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    .line 290
    instance-of v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v2, :cond_0

    .line 292
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;->o:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v3

    goto :goto_0

    .line 294
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .line 296
    :goto_0
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->k:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .line 297
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->a:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 298
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 299
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->a:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 300
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->b:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 301
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->c:Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->a(Ljava/util/List;)V

    .line 303
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e:Ljava/util/IdentityHashMap;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    if-eqz v2, :cond_1

    .line 306
    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->a(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    goto :goto_1

    .line 308
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->d()V

    .line 310
    :goto_1
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->j:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object v1, p1

    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v6, 0x4

    .line 311
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 310
    invoke-virtual/range {v4 .. v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

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

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->j:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 318
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e()J

    move-result-wide v7

    const/4 v2, 0x4

    move-wide v3, p2

    move-wide v5, p4

    .line 317
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    return-void
.end method

.method public b()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->k:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    return-object v0
.end method

.method public b(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->b()Z

    move-result p1

    return p1
.end method

.method public c()J
    .locals 2

    .line 213
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->o:J

    return-wide v0
.end method

.method public c(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->e()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->d()V

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    .line 235
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->c()V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->d()V

    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()V

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->l:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->n:Z

    return v0
.end method
