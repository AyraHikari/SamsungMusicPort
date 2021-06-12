.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->c:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;[Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;-><init>(Landroid/net/Uri;[Ljava/lang/String;)V

    .line 30
    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;

    new-instance p4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;J)V

    invoke-direct {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    return-void
.end method

.method private static e(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    const/4 v0, 0x0

    .line 90
    :catch_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong album id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in uri: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "-1"

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 42
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    .line 44
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->e(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "album_id = ?"

    const/4 v3, 0x1

    .line 46
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_2

    .line 47
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    .line 57
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 53
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->a(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 57
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p1

    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/net/Uri;)J
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->d(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method
