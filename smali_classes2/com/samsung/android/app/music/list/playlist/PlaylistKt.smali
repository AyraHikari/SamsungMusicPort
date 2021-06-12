.class public final Lcom/samsung/android/app/music/list/playlist/PlaylistKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_PLAYLISTS:I = 0x3e8

.field public static final MAX_PLAYLIST_MEMBERS:I = 0x3e8


# direct methods
.method public static final createDefaultPlaylistName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b02f6

    .line 149
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.playlist)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->createDefaultPlaylistName$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final createDefaultPlaylistName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 156
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 160
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v1, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "name"

    .line 161
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "name != \'\'"

    const-string v7, "name"

    const/4 v6, 0x0

    move-object v2, p0

    .line 159
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    .line 165
    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p0

    check-cast v1, Landroid/database/Cursor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 168
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 170
    :cond_0
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {p2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang.String.format(format, *args)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_1

    .line 172
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v8, "playlistName"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7, v2}, Lkotlin/text/StringsKt;->c(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 178
    :cond_3
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p0, "UiList"

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createDefaultPlaylistName() name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " baseName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " format: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_4

    .line 184
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    return-object v6

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 165
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic createDefaultPlaylistName$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const p1, 0x7f0b02f6

    .line 153
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p4, "context.getString(R.string.playlist)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const-string p2, "%s %03d"

    .line 154
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->createDefaultPlaylistName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getLastSyncedDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v0, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date_synced"

    .line 245
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 243
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    const/4 p1, 0x0

    .line 249
    move-object p2, p1

    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x2

    .line 251
    invoke-static {v0, p1, v1, p1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static {p0, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object p2, p1

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p0, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final getMaxItemOrder(Landroid/content/Context;J)I
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "uri"

    .line 34
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "max(play_order)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p0

    check-cast v1, Landroid/database/Cursor;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 38
    :cond_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p0, "UiList"

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMaxItemOrder() playlistId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " itemOrder: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 34
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final getPlaylistIdFromName(Landroid/content/Context;Ljava/lang/String;)J
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    int-to-long v0, v0

    .line 89
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v2, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "name=? COLLATE NOCASE"

    const/4 v2, 0x1

    .line 90
    new-array v6, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    const-string v7, "name"

    move-object v2, p0

    .line 88
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    const/4 p1, 0x0

    .line 92
    check-cast p1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p0

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 93
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 96
    :cond_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final getPlaylistMemberCount(Landroid/content/Context;JZ)I
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string p3, "cp_attrs != 524296"

    move-object v4, p3

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    const-string p3, "uri"

    .line 61
    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "count(*)"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object p3, p0

    check-cast p3, Landroid/database/Cursor;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 62
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 65
    :cond_1
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p0, "UiList"

    .line 66
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPlaylistMemberCount() playlistId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " count: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 61
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic getPlaylistMemberCount$default(Landroid/content/Context;JZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 53
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getPlaylistMemberCount(Landroid/content/Context;JZ)I

    move-result p0

    return p0
.end method

.method public static final getPlaylistName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x0

    .line 72
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "uri"

    .line 75
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "name"

    const-string v4, "_data"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 74
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    .line 77
    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p0

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 78
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 79
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    :cond_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p0, "UiList"

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlaylistName() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", playlistId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 77
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final getPlaylistTrackSeqIds(Landroid/content/Context;J[J)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J[J)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 118
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Sync$Members;->a(J)Landroid/net/Uri;

    move-result-object v12

    const-string v3, "MediaContents.Playlists.\u2026getContentUri(playlistId)"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "server_track_seq_id"

    .line 121
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v13

    .line 122
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    move-object/from16 v2, p3

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "play_order"

    move-object v1, p0

    move-object v2, v12

    move-object v3, v13

    .line 119
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 392
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Landroid/database/Cursor;

    if-nez v1, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 125
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 408
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 127
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object v0, v11

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 392
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    return-object v0
.end method

.method public static final getSourcePlaylistId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "Uri.withAppendedPath(Med\u2026I, playlistId.toString())"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source_playlist_id"

    .line 103
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 101
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    const/4 p1, 0x0

    .line 104
    move-object p2, p1

    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 106
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 108
    :cond_0
    :try_start_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-static {p0, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object p2, p1

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {p0, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final isModified(Landroid/content/Context;J)Z
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v0, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modified_state"

    .line 258
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 256
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    const/4 p1, 0x0

    .line 262
    check-cast p1, Ljava/lang/Throwable;

    :try_start_0
    move-object p2, p0

    check-cast p2, Landroid/database/Cursor;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 263
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 262
    :goto_0
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static final isPlaylistNameExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v0, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "count(*)"

    .line 135
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "name=? COLLATE NOCASE"

    const/4 v0, 0x1

    .line 137
    new-array v5, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v6, 0x0

    move-object v1, p0

    .line 133
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 139
    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p0

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 140
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v7, 0x1

    .line 143
    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p0, "UiList"

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPlaylistExist() name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isExist="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 139
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final isSyncable(Landroid/content/Context;J)Z
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v3, p1

    .line 47
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getPlaylistMemberCount$default(Landroid/content/Context;JZILjava/lang/Object;)I

    move-result p0

    const/16 p1, 0x3e8

    if-gt p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static final isUserPlaylist(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final makePlaylistMemberValues(Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;
    .locals 2

    .line 279
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "audio_id"

    .line 280
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "server_track_seq_id"

    .line 281
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return-object v0
.end method

.method public static synthetic makePlaylistMemberValues$default(Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 278
    move-object p0, v0

    check-cast p0, Ljava/lang/Long;

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move-object p1, v0

    check-cast p1, Ljava/lang/Integer;

    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makePlaylistMemberValues(Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public static final makePlaylistValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)Landroid/content/ContentValues;
    .locals 2

    .line 226
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "source_playlist_id"

    .line 228
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "is_sync"

    const/4 v1, 0x1

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "name"

    .line 232
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "date_added"

    .line 233
    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    if-eqz p3, :cond_3

    const-string p0, "date_modified"

    .line 234
    invoke-virtual {v0, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    if-eqz p4, :cond_4

    const-string p0, "date_synced"

    .line 235
    invoke-virtual {v0, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    if-eqz p5, :cond_5

    const-string p0, "modified_state"

    .line 236
    invoke-virtual {v0, p0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    if-eqz p6, :cond_6

    const-string p0, "date_recently_played"

    .line 237
    invoke-virtual {v0, p0, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6
    return-object v0
.end method

.method public static synthetic makePlaylistValues$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Landroid/content/ContentValues;
    .locals 5

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    .line 218
    move-object p0, v0

    check-cast p0, Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 219
    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    :cond_1
    move-object p8, p1

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    .line 220
    move-object p2, v0

    check-cast p2, Ljava/lang/Long;

    :cond_2
    move-object v1, p2

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    .line 221
    move-object p3, v0

    check-cast p3, Ljava/lang/Long;

    :cond_3
    move-object v2, p3

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    .line 222
    move-object p4, v0

    check-cast p4, Ljava/lang/Long;

    :cond_4
    move-object v3, p4

    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_6

    if-eqz v3, :cond_5

    const/4 p1, 0x0

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object p5, p1

    goto :goto_0

    :cond_5
    move-object p5, v0

    :cond_6
    :goto_0
    move-object v4, p5

    and-int/lit8 p1, p7, 0x40

    if-eqz p1, :cond_7

    .line 224
    move-object p6, v0

    check-cast p6, Ljava/lang/Long;

    :cond_7
    move-object p7, p6

    move-object p1, p0

    move-object p2, p8

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    invoke-static/range {p1 .. p7}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makePlaylistValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public static final makeRecommendTrackValues(Ljava/lang/String;Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;)Landroid/content/ContentValues;
    .locals 3

    const-string v0, "playlistId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverTrack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 342
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_artist_id"

    .line 344
    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->artistIds(Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "artist"

    .line 345
    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->artistNames(Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "image_url"

    .line 346
    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->imageUrls(Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "playlist_id"

    .line 347
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "audio_cp_attrs"

    const v1, 0x80002

    .line 348
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "audio_source_id"

    .line 349
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "explicit"

    .line 350
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;->getExplicit()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "is_celeb"

    .line 351
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;->getCelebYn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "album_id"

    .line 352
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "album"

    .line 353
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;->getAlbumTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final makeSyncDownMemberValues(JLcom/samsung/android/app/music/list/playlist/ServerTrack;)Landroid/content/ContentValues;
    .locals 3

    const-string v0, "serverTrack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 289
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_album_id"

    .line 290
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album"

    .line 291
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "explicit"

    .line 292
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getExplicit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "is_celeb"

    .line 293
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getCelebYn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_artist_id"

    .line 294
    invoke-static {p2}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->artistIds(Lcom/samsung/android/app/music/list/playlist/ServerTrack;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "artist"

    .line 295
    invoke-static {p2}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->artistNames(Lcom/samsung/android/app/music/list/playlist/ServerTrack;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "image_url"

    .line 296
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getLargeSizeImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 298
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "image_url_big"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "playlist_id"

    .line 301
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "audio_cp_attrs"

    .line 302
    invoke-static {p2}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->cpAttrs(Lcom/samsung/android/app/music/list/playlist/ServerTrack;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "audio_source_id"

    .line 303
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getTrackId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "audio_file_name"

    .line 304
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "server_track_seq_id"

    .line 305
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getTrackSeqId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "play_order"

    .line 306
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getDisplayOrder()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static final makeSyncUpMemberValues(Ljava/util/List;Ljava/util/List;)[Landroid/content/ContentValues;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;",
            ">;)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    const-string v0, "requestTracks"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultTracks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    check-cast p1, Ljava/lang/Iterable;

    .line 411
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_0
    check-cast v3, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;

    .line 315
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;

    .line 316
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->getTrackId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getTrackId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 317
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->getTrackSeqId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    .line 319
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Result order is not matched. input trackId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " title: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " result trackId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " seqId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->getTrackSeqId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 325
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    check-cast p0, Ljava/lang/Iterable;

    .line 414
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_3
    check-cast v2, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;

    .line 329
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getAudioId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 330
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 328
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makePlaylistMemberValues(Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object v1

    .line 327
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_1

    .line 334
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/content/ContentValues;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "contentValuesList.toArra\u2026(contentValuesList.size))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Landroid/content/ContentValues;

    return-object p0
.end method

.method public static final toDate(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const-string v0, "timeZone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 269
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 271
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 p0, 0x3e8

    int-to-long v3, p0

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 272
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 274
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "df.format(date)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const-string p1, "GMT+00:00"

    .line 268
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final updatePlaylistDb(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Z)I
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p10, :cond_0

    .line 200
    sget-object p10, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    goto :goto_0

    .line 202
    :cond_0
    sget-object p10, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v0, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p10}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p10

    :goto_0
    const-string v0, "if (notify) {\n        Me\u2026uildNotifyDisable()\n    }"

    .line 199
    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-static/range {p3 .. p9}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makePlaylistValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)Landroid/content/ContentValues;

    move-result-object p3

    .line 213
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "_id="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 198
    invoke-static {p0, p10, p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 190
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 191
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 192
    move-object v1, v2

    check-cast v1, Ljava/lang/Long;

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 193
    move-object v1, v2

    check-cast v1, Ljava/lang/Long;

    move-object v9, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 194
    move-object v1, v2

    check-cast v1, Ljava/lang/Long;

    move-object v10, v1

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    if-eqz v10, :cond_5

    const/4 v1, 0x0

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v2

    :goto_5
    move-object v11, v1

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    .line 196
    move-object v1, v2

    check-cast v1, Ljava/lang/Long;

    move-object v12, v1

    goto :goto_7

    :cond_7
    move-object/from16 v12, p9

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    const/4 v13, 0x1

    goto :goto_8

    :cond_8
    move/from16 v13, p10

    :goto_8
    move-object v3, p0

    move-wide v4, p1

    .line 197
    invoke-static/range {v3 .. v13}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Z)I

    move-result v0

    return v0
.end method
