.class public Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;
.source "SourceFile"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$AlbumArt;->a:Landroid/net/Uri;

    const-string v1, "image_url"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;-><init>(Landroid/net/Uri;[Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;

    new-instance v1, Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader$1;-><init>(Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    return-void
.end method

.method private static e(Landroid/net/Uri;)J
    .locals 2

    .line 93
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 44
    invoke-static {p2}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader;->e(Landroid/net/Uri;)J

    move-result-wide v0

    const-string v2, "MilkArtLoader"

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadArtwork() called with: uri = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], size = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], _id = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_id =? "

    const/4 v3, 0x1

    .line 50
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 51
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "image_url"

    .line 53
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MilkArtLoader"

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadArtwork() thumbnailUrl = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] for: uri = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "], size = ["

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 50
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 58
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw p1

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v0, :cond_4

    .line 60
    iget-object v2, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    .line 61
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/16 v5, 0x258

    move-object v3, p1

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->a(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object p1

    const/16 p2, 0x258

    .line 64
    invoke-static {p1, p2, p5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object p1

    return-object p1

    .line 66
    :cond_4
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    return-object p1
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public d(Landroid/net/Uri;)J
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->d(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method
