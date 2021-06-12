.class final Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

.field private final c:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final d:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:Lcom/samsung/android/app/music/advertise/AdPlayType;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->e:Z

    .line 81
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->f:Z

    .line 83
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->g:Z

    const-wide/16 v0, -0x1

    .line 85
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->h:J

    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 92
    iput-object p3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 93
    invoke-static {p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/model/Track;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 274
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 275
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getAudioUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "SV-RadioQueue"

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTrackList >> Temp trackId for AD : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/model/Track;->setTrackId(Ljava/lang/String;)V

    .line 279
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    new-instance v3, Lcom/samsung/android/app/music/model/artist/Artist;

    const-string v4, "AD_ARTIST"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getArtistList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/music/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/model/Track;->setArtistList(Ljava/util/ArrayList;)V

    const-string v2, "AD_ALBUM"

    .line 282
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/model/Track;->setAlbumId(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getImageBigUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/model/Track;->setImageBigUrl(Ljava/lang/String;)V

    .line 287
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/SimpleTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object p1

    .line 288
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a:Landroid/content/Context;

    .line 289
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MilkTrack;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 291
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    return-wide v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;Lcom/samsung/android/app/music/model/Track;)J
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Lcom/samsung/android/app/music/model/Track;)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 0

    .line 330
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->appendWithBaseUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getPlayingItemRequestBuilder()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object v0

    const-string v1, "SV-RadioQueue"

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdPlayingItemInternal() Play advertisement - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->g()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setUri(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setQueueItemId(J)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    const/4 p2, 0x2

    .line 311
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setUriType(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setListPosition(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 312
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setListSize(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setPlayDirection(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    .line 313
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setPlaylistId(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    .line 314
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;

    move-result-object p2

    invoke-static {p1, p2, p4}, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/artist/Artist;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 298
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 301
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/artist/Artist;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/artist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "\uc7a0\uc2dc \ud6c4 \uc74c\uc545\uc774 \ub2e4\uc2dc \uc7ac\uc0dd\ub429\ub2c8\ub2e4"

    return-object p1
.end method

.method private d(Lcom/samsung/android/app/music/advertise/AdPlayType;)Ljava/lang/String;
    .locals 1

    .line 139
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager$2;->a:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/advertise/AdPlayType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "special_audio"

    return-object p1

    :pswitch_1
    const-string p1, "interruption"

    return-object p1

    :pswitch_2
    const-string p1, "audio"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e()Z
    .locals 1

    .line 173
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->AD:Lcom/samsung/android/app/music/advertise/AdPlayType;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->e(Lcom/samsung/android/app/music/advertise/AdPlayType;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->f()Z

    move-result v0

    return v0
.end method

.method private e(Lcom/samsung/android/app/music/advertise/AdPlayType;)Z
    .locals 5

    .line 194
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->h:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-SV-RadioQueue"

    const-string v0, "isAdOn >> mAdInfo is not initialized."

    .line 195
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 198
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager$2;->a:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/advertise/AdPlayType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    return v2

    .line 202
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->h:J

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/model/AdInfo;->isSpecialAdOn(J)Z

    move-result p1

    return p1

    .line 200
    :cond_2
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->h:J

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/model/AdInfo;->isAudioAdOn(J)Z

    move-result p1

    return p1
.end method

.method private f(Lcom/samsung/android/app/music/advertise/AdPlayType;)I
    .locals 1

    .line 334
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->AD:Lcom/samsung/android/app/music/advertise/AdPlayType;

    if-ne v0, p1, :cond_0

    const/16 p1, 0xa

    return p1

    .line 337
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->AI:Lcom/samsung/android/app/music/advertise/AdPlayType;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x3

    return p1

    .line 340
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->PREAD:Lcom/samsung/android/app/music/advertise/AdPlayType;

    if-ne v0, p1, :cond_2

    const/16 p1, 0xb

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private f()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()Landroid/net/Uri;
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->h()Landroid/net/Uri;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setBaseUri(Landroid/net/Uri;)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private h()Landroid/net/Uri;
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Z)Lcom/samsung/android/app/music/advertise/AdPlayType;
    .locals 0

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    sget-object p1, Lcom/samsung/android/app/music/advertise/AdPlayType;->PREAD:Lcom/samsung/android/app/music/advertise/AdPlayType;

    return-object p1

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->b()Lcom/samsung/android/app/music/advertise/AdPlayType;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    :goto_0
    return-object p1
.end method

.method a(Lcom/samsung/android/app/music/advertise/AdPlayType;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a:Landroid/content/Context;

    .line 230
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->f(Lcom/samsung/android/app/music/advertise/AdPlayType;)I

    move-result p1

    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/music/network/request/play/PlayApis;->a(Landroid/content/Context;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 231
    invoke-virtual {p1, v1, v2, v3}, Lio/reactivex/Observable;->b(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/TrackListInfo;

    if-eqz p1, :cond_1

    .line 232
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/TrackListInfo;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/TrackListInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/Track;

    .line 236
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Lcom/samsung/android/app/music/model/Track;)J

    move-result-wide v1

    .line 237
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getAudioUrl()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-direct {p0, v1, v2, p2, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method a()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    return-object v0
.end method

.method a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Ljava/util/List;
    .locals 20
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getQueueItemId()J

    move-result-wide v0

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getGenre()Ljava/lang/String;

    move-result-object v7

    const-string v3, "android.media.metadata.DURATION"

    .line 215
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 216
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v10

    .line 217
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v12

    long-to-int v12, v12

    .line 218
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSoundQuality()J

    move-result-wide v13

    const-string v3, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    .line 219
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 220
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v17

    move-object/from16 v19, v3

    move-wide/from16 v2, v17

    invoke-static/range {v0 .. v16}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueItemUtils;->obtainItem(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJJ)Landroid/media/session/MediaSession$QueueItem;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method a(J)V
    .locals 0

    .line 155
    iput-wide p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->h:J

    return-void
.end method

.method a(Lcom/samsung/android/app/music/advertise/AdPlayType;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "ads_show"

    const-string v2, "ads_type"

    .line 112
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->d(Lcom/samsung/android/app/music/advertise/AdPlayType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/samsung/android/app/music/advertise/AdPlayType;Ljava/lang/String;Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$OnPlayingItemCompleted;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->f(Lcom/samsung/android/app/music/advertise/AdPlayType;)I

    move-result p1

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/network/request/play/PlayApis;->a(Landroid/content/Context;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 250
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager$1;-><init>(Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$OnPlayingItemCompleted;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method a(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$OnTypeChangedListener;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$OnTypeChangedListener;)V

    return-void
.end method

.method a(ZZ)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->e:Z

    .line 102
    iput-boolean p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->f:Z

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->g:Z

    return-void
.end method

.method b()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->i:Lcom/samsung/android/app/music/advertise/AdPlayType;

    if-nez v0, :cond_0

    const-string v0, "SV-RadioQueue"

    const-string v1, "notifyAdCompletePlaying >> AdPlayType is abnormal"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "SV-RadioQueue"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAdCompletePlaying >> AdPlayType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->i:Lcom/samsung/android/app/music/advertise/AdPlayType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/advertise/AdPlayType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->i:Lcom/samsung/android/app/music/advertise/AdPlayType;

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdPlayType;->PREAD:Lcom/samsung/android/app/music/advertise/AdPlayType;

    if-ne v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->g()V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->b()Lcom/samsung/android/app/music/advertise/AdPlayType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->c(Lcom/samsung/android/app/music/advertise/AdPlayType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->e()Z

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->i:Lcom/samsung/android/app/music/advertise/AdPlayType;

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdPlayType;->AD:Lcom/samsung/android/app/music/advertise/AdPlayType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->i:Lcom/samsung/android/app/music/advertise/AdPlayType;

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdPlayType;->AI:Lcom/samsung/android/app/music/advertise/AdPlayType;

    if-ne v0, v1, :cond_3

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->e()Z

    .line 131
    :cond_3
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->i:Lcom/samsung/android/app/music/advertise/AdPlayType;

    return-void
.end method

.method b(Lcom/samsung/android/app/music/advertise/AdPlayType;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->i:Lcom/samsung/android/app/music/advertise/AdPlayType;

    return-void
.end method

.method c()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$OnTypeChangedListener;)V

    return-void
.end method

.method c(Lcom/samsung/android/app/music/advertise/AdPlayType;)Z
    .locals 1

    .line 159
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method d()Z
    .locals 2

    .line 183
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->PREAD:Lcom/samsung/android/app/music/advertise/AdPlayType;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->e(Lcom/samsung/android/app/music/advertise/AdPlayType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
