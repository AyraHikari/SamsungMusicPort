.class public Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;
.source "SourceFile"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 55
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->a:Landroid/net/Uri;

    const-string v1, "image_url_small"

    const-string v2, "image_url_middle"

    const-string v3, "image_url_big"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;-><init>(Landroid/net/Uri;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->c:I

    .line 57
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;

    new-instance v1, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader$1;-><init>(Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 3

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100087

    .line 185
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f100086

    .line 186
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-le p1, p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    if-gt p1, p0, :cond_1

    if-le p1, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string v0, "MilkAlbumArtLoader"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThumbnailSizeIndex() | origin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pixel > modified: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {p0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pixel"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_INDEX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/16 p0, 0x258

    goto :goto_0

    :pswitch_1
    const/16 p0, 0xc8

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x60

    .line 149
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/net/Uri;ILandroid/database/Cursor;)Ljava/lang/String;
    .locals 4

    .line 99
    iget v0, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "image_url_big"

    .line 101
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->c:I

    const-string v0, "image_url_middle"

    .line 102
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->d:I

    const-string v0, "image_url_small"

    .line 103
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->e:I

    :cond_0
    const/4 v0, 0x3

    .line 105
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->e:I

    invoke-interface {p4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->d:I

    .line 106
    invoke-interface {p4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget v3, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->c:I

    invoke-interface {p4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v0, v1

    .line 108
    aget-object p4, v0, p3

    if-eqz p4, :cond_1

    .line 109
    aget-object p1, v0, p3

    return-object p1

    :cond_1
    move p4, p3

    .line 113
    :cond_2
    array-length v1, v0

    sub-int/2addr v1, v2

    if-ge p4, v1, :cond_3

    add-int/lit8 p4, p4, 0x1

    .line 115
    aget-object v1, v0, p4

    if-eqz v1, :cond_2

    .line 116
    aget-object p1, v0, p4

    return-object p1

    .line 119
    :cond_3
    array-length p4, v0

    sub-int/2addr p4, v2

    .line 120
    sget-object v1, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->a:Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;

    invoke-static {p2}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->e(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->a(Landroid/content/Context;J)V

    :goto_0
    if-ltz p4, :cond_5

    .line 122
    aget-object p1, v0, p4

    if-eqz p1, :cond_4

    const-string p1, "SMUSIC-MilkAlbumArtLoader"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find requested size URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " requested size: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-static {p3}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " found size: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-static {p4}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    aget-object p1, v0, p4

    return-object p1

    :cond_4
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a([I)[I
    .locals 5

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, p0, v2

    const/16 v4, 0x60

    if-ne v3, v4, :cond_0

    const v3, 0x7f100087

    .line 205
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    const v3, 0x7f100086

    .line 207
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/16 v4, 0x258

    if-ne v3, v4, :cond_2

    const v3, 0x7f1000b6

    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f1000b7

    .line 210
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/app/music/util/CollectionsUtils;->a(Ljava/util/Collection;)[I

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/net/Uri;)J
    .locals 2

    .line 175
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "MilkAlbumArtLoader"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadArtwork() called with: uri = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], size = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {p2}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->e(Landroid/net/Uri;)J

    move-result-wide v0

    const-string v2, "thumbnail_id =? AND thumbnail_type =?"

    .line 74
    invoke-static {p1, p3}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->a(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x2

    .line 75
    new-array v4, v4, [Ljava/lang/String;

    .line 76
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, v2, v4, v0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 77
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->a(Landroid/content/Context;Landroid/net/Uri;ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    invoke-static {v2}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->b(Ljava/lang/String;)I

    move-result v3

    :cond_0
    const-string v4, "MilkAlbumArtLoader"

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadArtwork() thumbnailUrl = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] for: uri = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "], size = ["

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 75
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 86
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw p1

    :cond_3
    :goto_2
    move v5, v3

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v0, :cond_5

    .line 89
    iget-object v2, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    .line 90
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v3, p1

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->a(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object p1

    const/16 p2, 0x258

    .line 92
    invoke-static {p1, p2, p5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object p1

    return-object p1

    .line 94
    :cond_5
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

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->d(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method
