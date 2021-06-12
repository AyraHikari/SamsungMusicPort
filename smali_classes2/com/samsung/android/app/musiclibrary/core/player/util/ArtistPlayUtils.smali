.class public final Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getArtistId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 62
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->a:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "artist COLLATE NOCASE = ? "

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 66
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 69
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw v0

    :cond_2
    :goto_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p1
.end method

.method public static getSongList(Landroid/content/Context;Ljava/lang/String;)[J
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 46
    new-array p0, p0, [J

    return-object p0

    .line 49
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackQueryArgs;-><init>(Ljava/lang/String;)V

    const-string p1, "_id"

    .line 50
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 52
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p0

    .line 53
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    .line 55
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 56
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 56
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    throw v0
.end method

.method public static play(Landroid/content/Context;JZ)V
    .locals 0

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;->playInternal(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static play(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;->getArtistId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;->playInternal(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public static play(Landroid/content/Context;J)Z
    .locals 0

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;->playInternal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static playInternal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;->playInternal(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static playInternal(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    .line 36
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;->getSongList(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 37
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JIZ)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method
