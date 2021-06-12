.class Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Milk"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$1;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;-><init>()V

    return-void
.end method

.method private a(ILandroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    .line 197
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "local_track_ext_320k"

    .line 199
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 198
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "local_track_ext"

    .line 201
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 146
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseQuality(Ljava/lang/String;)I

    move-result v0

    .line 148
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->a()Landroid/net/Uri;

    move-result-object v2

    .line 149
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;->a(I)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "track_id=? AND download_state=2"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 153
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseSourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 v6, 0x0

    move-object v1, p1

    .line 148
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const/4 v1, 0x0

    .line 154
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;->a(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {p1}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 160
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 147
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v1, :cond_3

    .line 160
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    throw p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(I)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "CASE WHEN local_track_ext IS NULL OR local_track_ext = \'\' THEN local_track_ext_320k ELSE local_track_ext END AS local_track_ext"

    .line 183
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "local_track_ext_320k"

    .line 180
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 164
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 167
    :cond_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "local_track_id=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 170
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "_data"

    .line 171
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 173
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v1, p2

    .line 167
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    .line 173
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    throw p2

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v1
.end method
