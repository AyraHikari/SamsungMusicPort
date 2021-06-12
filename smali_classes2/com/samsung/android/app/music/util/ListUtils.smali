.class public final Lcom/samsung/android/app/music/util/ListUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .locals 1

    .line 423
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const v0, 0x10001

    :goto_0
    return v0
.end method

.method public static a(I)I
    .locals 4

    const v0, 0x1000b

    if-eq p0, v0, :cond_2

    const v0, 0x10030

    if-eq p0, v0, :cond_1

    const v0, 0x10100

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const v0, 0x7f0b03da

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0b044a

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b00e3

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b014a

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b014f

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0b02fb

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0b0091

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0b0082

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0517

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0142

    goto :goto_0

    :cond_2
    const v0, 0x7f0b02a7

    :goto_0
    const-string v1, "ListUtils"

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getListTypeTextResId() - listType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " listType text resId: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10006
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a([JJ)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p0, :cond_4

    .line 344
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    return v0

    .line 353
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-wide v3, p0, v1

    cmp-long v3, p1, v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    :goto_2
    return v0
.end method

.method public static a(Landroid/content/Context;J)J
    .locals 7

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 364
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->d:Landroid/net/Uri;

    const-string p1, "source_id"

    const-string p2, "_id"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 365
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    .line 368
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "_id"

    .line 369
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 371
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 364
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 371
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw p2

    :cond_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private static varargs a([J)Ljava/lang/String;
    .locals 5

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    .line 104
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p0, "ListUtils"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeDefaultPlaylistListString() result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Landroid/content/Context;[J)V
    .locals 2

    const-string v0, "music_player_pref"

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 82
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "playlist_menu_list"

    .line 84
    invoke-static {p1}, Lcom/samsung/android/app/music/util/ListUtils;->a([J)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(J)Z
    .locals 2

    const-wide/16 v0, -0xe

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0xc

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0xd

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0xb

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Landroid/content/Context;)[J
    .locals 6

    const-string v0, "music_player_pref"

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "playlist_menu_list"

    const/4 v3, 0x0

    .line 55
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 59
    invoke-static {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->getFavoriteTrackCount(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x2

    .line 61
    new-array p0, p0, [J

    fill-array-data p0, :array_0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/ListUtils;->a([J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 64
    new-array p0, p0, [J

    const-wide/16 v2, -0xe

    aput-wide v2, p0, v1

    invoke-static {p0}, Lcom/samsung/android/app/music/util/ListUtils;->a([J)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_1
    :goto_0
    new-instance p0, Ljava/util/StringTokenizer;

    const-string v2, "|"

    invoke-direct {p0, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 69
    new-array v3, v2, [J

    :goto_1
    if-ge v1, v2, :cond_2

    .line 72
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string p0, "ListUtils"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDynamicDefaultPlaylistIdsFromPref() - defaultPlaylistString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    nop

    :array_0
    .array-data 8
        -0xb
        -0xe
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)[J
    .locals 7

    const-string v0, "_id"

    .line 314
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 320
    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 322
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v4, "replace(_data, _display_name, \'\') like ? AND is_music=1"

    const/4 v6, 0x0

    move-object v1, p0

    .line 323
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    .line 326
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 330
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [J

    :cond_1
    const-string v2, "_id"

    .line 334
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    add-int/lit8 v4, v0, 0x1

    .line 336
    aput-wide v2, v1, v0

    move v0, v4

    .line 338
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    if-eqz p0, :cond_3

    .line 340
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 322
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    .line 340
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    throw v0

    :cond_6
    :goto_2
    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object p1
.end method

.method public static b(J)I
    .locals 4

    long-to-int v0, p0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0b0429

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0b0141

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b026a

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b030c

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b030b

    :goto_0
    const-string v1, "ListUtils"

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getListItemTextResId() - listItemId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " listItem text resId: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;J)I
    .locals 6

    .line 376
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->d:Landroid/net/Uri;

    const-string v0, "sort_by"

    .line 378
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 383
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x4

    if-eqz p0, :cond_3

    const/4 p2, 0x0

    .line 384
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 385
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne v0, p2, :cond_0

    goto :goto_2

    :cond_0
    move p1, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object p2, p1

    .line 382
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    .line 392
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw p1

    :cond_3
    :goto_2
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return p1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const v0, 0x1000b

    if-eq p0, v0, :cond_1

    const v0, 0x10030

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p0, "INVALID"

    goto :goto_0

    :pswitch_0
    const-string p0, "YEAR"

    goto :goto_0

    :pswitch_1
    const-string p0, "COMPOSER"

    goto :goto_0

    :pswitch_2
    const-string p0, "FOLDER"

    goto :goto_0

    :pswitch_3
    const-string p0, "GENRE"

    goto :goto_0

    :pswitch_4
    const-string p0, "PLAYLIST"

    goto :goto_0

    :pswitch_5
    const-string p0, "ARTIST"

    goto :goto_0

    :pswitch_6
    const-string p0, "ALBUM"

    goto :goto_0

    :cond_0
    const-string p0, "HEART"

    goto :goto_0

    :cond_1
    const-string p0, "DLNA_DMS"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10006
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    goto :goto_0

    :sswitch_0
    const p0, 0x10000b

    goto :goto_0

    :sswitch_1
    const p0, 0x100008

    goto :goto_0

    :sswitch_2
    const p0, 0x100007

    goto :goto_0

    :sswitch_3
    const p0, 0x100006

    goto :goto_0

    :sswitch_4
    const p0, 0x100004

    goto :goto_0

    :sswitch_5
    const p0, 0x100003

    goto :goto_0

    :sswitch_6
    const p0, 0x100002

    goto :goto_0

    :sswitch_7
    const/16 p0, 0x66

    goto :goto_0

    :sswitch_8
    const/16 p0, 0x55

    goto :goto_0

    :sswitch_9
    const/16 p0, 0x54

    :goto_0
    return p0

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_9
        0x55 -> :sswitch_8
        0x66 -> :sswitch_7
        0x10002 -> :sswitch_6
        0x10003 -> :sswitch_5
        0x10004 -> :sswitch_4
        0x10006 -> :sswitch_3
        0x10007 -> :sswitch_2
        0x10008 -> :sswitch_1
        0x1000b -> :sswitch_0
    .end sparse-switch
.end method

.method public static d(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    goto :goto_0

    :sswitch_0
    const p0, 0x110001

    goto :goto_0

    :sswitch_1
    const p0, 0x1000b

    goto :goto_0

    :sswitch_2
    const p0, 0x10008

    goto :goto_0

    :sswitch_3
    const p0, 0x10007

    goto :goto_0

    :sswitch_4
    const p0, 0x10006

    goto :goto_0

    :sswitch_5
    const p0, 0x10004

    goto :goto_0

    :sswitch_6
    const p0, 0x10002

    goto :goto_0

    :sswitch_7
    const p0, 0x10003

    goto :goto_0

    :sswitch_8
    const/16 p0, 0x66

    goto :goto_0

    :sswitch_9
    const/16 p0, 0x55

    goto :goto_0

    :sswitch_a
    const/16 p0, 0x54

    :goto_0
    return p0

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_a
        0x55 -> :sswitch_9
        0x66 -> :sswitch_8
        0x10027 -> :sswitch_7
        0x100002 -> :sswitch_6
        0x100003 -> :sswitch_7
        0x100004 -> :sswitch_5
        0x100006 -> :sswitch_4
        0x100007 -> :sswitch_3
        0x100008 -> :sswitch_2
        0x10000b -> :sswitch_1
        0x110001 -> :sswitch_0
        0x110027 -> :sswitch_7
    .end sparse-switch
.end method

.method public static e(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid filterOption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "storage_order, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " COLLATE LOCALIZED "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "artist COLLATE LOCALIZED "

    return-object p0

    :pswitch_2
    const-string p0, "play_order"

    return-object p0

    :cond_0
    const-string p0, "recently_played DESC"

    return-object p0

    .line 401
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " COLLATE LOCALIZED "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
