.class public Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->a:Landroid/content/Context;

    .line 36
    iput-object p5, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->b:Ljava/lang/String;

    .line 37
    iput p4, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 91
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 94
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 95
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 96
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/samsung/android/app/music/model/PlayTrackInfo;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getTrackId()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "drm_type"

    const/4 v3, 0x2

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "album_art_location"

    .line 64
    sget-object v3, Lcom/samsung/android/app/music/provider/MusicContents$AlbumArtLocationExtra;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getTrackTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "album"

    .line 67
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getAlbumTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "artist"

    .line 68
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getArtistNames()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "album_artist"

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getArtistNames()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "source_id=?"

    const/4 v4, 0x1

    .line 73
    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->c:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 74
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->a:Landroid/content/Context;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    .line 75
    invoke-static {v6, v7, v1, v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ge v1, v4, :cond_1

    const-string v1, "GetTrackDetailForDrmWorker"

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTrackDetail failed : trackId "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->a:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->c:I

    int-to-long v3, v1

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->a(Landroid/content/Context;J)Landroid/content/ContentValues;

    move-result-object v0

    .line 81
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->a:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->a(Landroid/content/Context;Landroid/content/ContentValues;Landroid/graphics/Bitmap;)Z

    goto :goto_0

    :cond_2
    const-string v0, "GetTrackDetailForDrmWorker"

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHttpResponse >> bitmap is null. - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getTrackId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;Lcom/samsung/android/app/music/model/PlayTrackInfo;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->a(Lcom/samsung/android/app/music/model/PlayTrackInfo;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->c(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker$1;-><init>(Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;)V

    .line 42
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
