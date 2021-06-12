.class public Lcom/samsung/android/app/music/util/player/GoogleSearchPlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;)V
    .locals 0

    .line 123
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "query"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/music/util/player/GoogleSearchPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Search;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string p1, "_id"

    const-string v0, "mime_type"

    .line 89
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 118
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    .line 95
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_3

    if-eqz p1, :cond_2

    .line 118
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    .line 99
    :cond_3
    :try_start_1
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 101
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "mime_type"

    .line 103
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "artist"

    .line 104
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "_id"

    .line 105
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 106
    invoke-static {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;->play(Landroid/content/Context;J)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 118
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return p0

    :cond_5
    :try_start_2
    const-string v3, "album"

    .line 107
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "_id"

    .line 108
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 109
    invoke-static {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/player/util/AlbumPlayUtils;->play(Landroid/content/Context;J)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_6

    .line 118
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    return p0

    :cond_7
    :try_start_3
    const-string p0, "_id"

    .line 111
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_9

    const/4 p0, 0x1

    .line 113
    new-array v4, p0, [J

    aput-wide v2, v4, v0

    invoke-static {v1, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_8

    .line 118
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_8
    return p0

    :cond_9
    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_a
    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v1, p0

    .line 89
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    if-eqz p1, :cond_c

    if-eqz v1, :cond_b

    .line 118
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_1
    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8

    const-string v0, "android.intent.extra.focus"

    .line 38
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/GoogleSearchPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string v1, "android.intent.extra.album"

    .line 46
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "android.intent.extra.artist"

    .line 47
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "android.intent.extra.title"

    .line 48
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "android.intent.extra.genre"

    .line 49
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "android.intent.extra.playlist"

    .line 50
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.radio_channel"

    .line 51
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "vnd.android.cursor.item/*"

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 56
    invoke-static {p0}, Lcom/samsung/android/app/music/util/player/GoogleSearchPlayUtils;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    .line 60
    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/GoogleSearchPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const-string v2, "vnd.android.cursor.item/genre"

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 64
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v6

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/GoogleSearchPlayUtils;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    const-string v2, "vnd.android.cursor.item/artist"

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 67
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, v5

    :goto_1
    invoke-static {p0, p1, v6}, Lcom/samsung/android/app/music/util/player/GoogleSearchPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_6
    const-string v2, "vnd.android.cursor.item/album"

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    .line 70
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_2

    :cond_7
    move-object p1, v4

    :goto_2
    invoke-static {p0, p1, v5, v6}, Lcom/samsung/android/app/music/util/player/GoogleSearchPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_8
    const-string v2, "vnd.android.cursor.item/audio"

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    .line 73
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_3

    :cond_9
    move-object p1, v7

    :goto_3
    invoke-static {p0, p1, v4, v5, v6}, Lcom/samsung/android/app/music/util/player/GoogleSearchPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_a
    const-string v2, "vnd.android.cursor.item/radio"

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    move-object v2, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p2

    .line 77
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/util/player/GoogleSearchPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    const-string p2, "vnd.android.cursor.item/playlist"

    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_d

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    move-object v3, p1

    goto :goto_4

    :cond_c
    move-object v3, v1

    :goto_4
    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/util/player/GoogleSearchPlayUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-static {p0, v0, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object p0

    .line 137
    array-length p1, p0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 140
    :cond_0
    invoke-static {v0, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-static {p0, v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object p0

    .line 146
    array-length p1, p0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 149
    :cond_0
    invoke-static {v0, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 155
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object p0

    .line 156
    array-length p1, p0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    .line 159
    invoke-static {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 127
    invoke-static {p0, v0, v0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object p0

    .line 128
    array-length p1, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 131
    :cond_0
    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    const/4 p0, 0x1

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 171
    invoke-static/range {p0 .. p5}, Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
