.class public Lcom/samsung/android/app/music/util/player/SFinderPlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "title"

    goto :goto_0

    :pswitch_0
    const-string p0, "playlist"

    goto :goto_0

    :pswitch_1
    const-string p0, "artist"

    goto :goto_0

    :pswitch_2
    const-string p0, "album"

    goto :goto_0

    :pswitch_3
    const-string p0, "title"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v0

    .line 166
    :pswitch_0
    invoke-static {p2}, Lcom/samsung/android/app/music/util/FavoriteTracksUtils;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->d:Landroid/net/Uri;

    goto :goto_0

    .line 169
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    :goto_0
    const-string v1, "_id"

    .line 171
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "name COLLATE NOCASE = ? "

    goto :goto_1

    .line 156
    :pswitch_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->a:Landroid/net/Uri;

    const-string v1, "_id"

    .line 157
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "artist COLLATE NOCASE = ? "

    goto :goto_1

    .line 161
    :pswitch_2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->a:Landroid/net/Uri;

    const-string v1, "_id"

    .line 162
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "album COLLATE NOCASE = ? "

    :goto_1
    move-object v4, p1

    move-object v5, v1

    move-object v6, v2

    const/4 p1, 0x1

    .line 179
    new-array v7, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v7, p1

    const/4 v8, 0x0

    move-object v3, p0

    .line 180
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 181
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 182
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlayUtils"

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 179
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    .line 185
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    throw p1

    :cond_3
    move-object p1, v0

    :goto_4
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string p0, "PlayUtils"

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getKeyword() - keyword: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x100002
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "intent_extra_data_key"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent_extra_from"

    .line 43
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.galaxyfinder"

    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "PlayUtils"

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SFinderPlayUtils play: intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " search "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "global_search"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "title"

    .line 54
    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/music/util/player/PlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_3

    const-string v1, "intent_extra_target_type"

    .line 57
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 59
    invoke-static {p1}, Lcom/samsung/android/app/music/util/player/SFinderPlayUtils;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {p1}, Lcom/samsung/android/app/music/util/player/SFinderPlayUtils;->b(I)I

    move-result p1

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/samsung/android/app/music/util/player/SFinderPlayUtils;->b(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const p1, 0x7f0b0421

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const v2, 0x110001

    if-eq p1, v2, :cond_2

    .line 84
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/util/player/SFinderPlayUtils;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 83
    invoke-static {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/util/player/SFinderPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p0}, Lcom/samsung/android/app/music/util/LaunchUtils;->b(Landroid/app/Activity;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PlayUtils"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playViaGalaxyFinder() - type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " search: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->playById(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "album"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/AlbumPlayUtils;->play(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "artist"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;->play(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "playlist"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 101
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private static b(I)I
    .locals 1

    const v0, 0x110001

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x100004

    goto :goto_0

    :pswitch_1
    const v0, 0x100003

    goto :goto_0

    :pswitch_2
    const v0, 0x100002

    :goto_0
    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 11

    .line 191
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v1, "count(*)"

    .line 192
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const v1, 0x110001

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    return v10

    .line 208
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->d:Landroid/net/Uri;

    const-string p1, "name=? COLLATE NOCASE"

    .line 210
    new-array v1, v9, [Ljava/lang/String;

    aput-object p2, v1, v10

    goto :goto_0

    :pswitch_1
    const-string p1, "artist=? COLLATE NOCASE"

    .line 201
    new-array v1, v9, [Ljava/lang/String;

    aput-object p2, v1, v10

    goto :goto_0

    :pswitch_2
    const-string p1, "album=? COLLATE NOCASE"

    .line 205
    new-array v1, v9, [Ljava/lang/String;

    aput-object p2, v1, v10

    :goto_0
    move-object v5, p1

    move-object v3, v0

    move-object v6, v1

    goto :goto_1

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    move-object v3, v0

    move-object v6, v8

    :goto_1
    const/4 v7, 0x0

    move-object v2, p0

    .line 217
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 218
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 219
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_4

    if-eqz p0, :cond_1

    .line 223
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v9

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v8, p1

    .line 216
    :try_start_1
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz p0, :cond_3

    if-eqz v8, :cond_2

    .line 223
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {v8, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    throw p1

    :cond_4
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    return v10

    :pswitch_data_0
    .packed-switch 0x100002
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
