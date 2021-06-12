.class public final Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 22
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 31
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;->b(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object p0

    const/4 v0, 0x0

    .line 33
    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    .line 34
    array-length p0, p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IZ)I
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;->b(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object p0

    .line 45
    invoke-static {p1, p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JIZ)V

    .line 46
    array-length p0, p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 100
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;->b(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v1

    if-nez p5, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 104
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;->a(Landroid/content/Context;[JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v1

    :cond_1
    const/4 p0, 0x0

    if-eqz v1, :cond_3

    .line 106
    array-length p2, v1

    if-nez p2, :cond_2

    goto :goto_0

    .line 109
    :cond_2
    invoke-static {p1, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return p0
.end method

.method private static a(Landroid/content/Context;[JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J
    .locals 7

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id"

    .line 119
    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p5, :cond_0

    const-string v3, " AND %1$s LIKE \"%%%2$s%%\""

    .line 121
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "title"

    aput-object v5, v4, v1

    aput-object p5, v4, p1

    .line 122
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    const-string p5, " AND %1$s LIKE \"%%%2$s%%\""

    .line 125
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "album"

    aput-object v4, v3, v1

    aput-object p2, v3, p1

    .line 126
    invoke-static {p5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, " AND %1$s LIKE \"%%%2$s%%\""

    .line 129
    new-array p5, v2, [Ljava/lang/Object;

    const-string v3, "artist"

    aput-object v3, p5, v1

    aput-object p3, p5, p1

    .line 130
    invoke-static {p2, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 129
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p4, :cond_3

    const-string p2, " AND %1$s LIKE \"%%%2$s%%\""

    .line 133
    new-array p3, v2, [Ljava/lang/Object;

    const-string p5, "genre"

    aput-object p5, p3, v1

    aput-object p4, p3, p1

    .line 134
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_3
    sget-object p1, Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string p1, "_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 137
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    .line 139
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    .line 140
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    .line 140
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_1
    throw p2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)[J
    .locals 9

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 51
    new-array p0, p0, [J

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 58
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v3, p0

    .line 59
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    .line 61
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 62
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 62
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

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 72
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/util/FavoriteTracksUtils;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->d:Landroid/net/Uri;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    goto :goto_0

    :goto_1
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "name COLLATE NOCASE = ? "

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    const/4 v7, 0x0

    move-object v2, p0

    .line 71
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 78
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 79
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 71
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    .line 81
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    throw p1

    :cond_4
    move-object p1, v0

    :goto_4
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p1
.end method
