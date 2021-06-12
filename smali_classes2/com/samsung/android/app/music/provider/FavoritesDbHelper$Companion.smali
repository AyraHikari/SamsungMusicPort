.class public final Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/FavoritesDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;-><init>()V

    return-void
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)I
    .locals 5

    if-eqz p5, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    const-string p5, ""

    .line 218
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT album_id, name, number_of_tracks AS data1, cp_attrs, dummy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FROM ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 223
    invoke-virtual {p1, p2, p6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const/4 p5, 0x0

    if-eqz p2, :cond_3

    check-cast p2, Ljava/io/Closeable;

    const/4 p6, 0x0

    .line 226
    move-object v0, p6

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p2

    check-cast v1, Landroid/database/Cursor;

    .line 227
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    new-instance p5, Landroid/content/ContentValues;

    invoke-direct {p5}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "album_id"

    const-string v3, "album_id"

    .line 270
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data1"

    const-string v3, "data1"

    .line 271
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "favorite_name"

    const-string v3, "name"

    .line 272
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cp_attrs"

    const-string v3, "cp_attrs"

    .line 273
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 241
    invoke-virtual {p5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "hearts"

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 246
    invoke-virtual {p1, v1, p5, p3, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string p3, "FavoriteProvider-FavoritesDbHelper"

    .line 254
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "updateFavoriteInfoInternal : updated "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p6, 0x20

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a()Z

    move-result p6

    if-eqz p6, :cond_1

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "with "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    :cond_1
    const-string p5, ""

    :goto_1
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 252
    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move p5, p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    const-string p6, "FavoriteProvider-FavoritesDbHelper"

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFavoriteInfoInternal : update fail - favId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 259
    invoke-static {p1, p6, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, p1

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    :goto_4
    return p5
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JZILjava/lang/Object;)I
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 152
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JZ)I

    move-result p0

    return p0
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;IJ)J
    .locals 8

    const-string v1, "hearts"

    const-string v0, "_id"

    .line 194
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "category_type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "AND category_id="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 192
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 p2, 0x0

    .line 199
    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    move-object p3, p1

    check-cast p3, Landroid/database/Cursor;

    if-eqz p3, :cond_1

    .line 200
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 203
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 p3, -0x1

    .line 204
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-wide p3

    :catchall_0
    move-exception p3

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 126
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->d(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JZ)I
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    const v1, 0x10004

    invoke-direct {v0, p2, v1, p3, p4}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;IJ)J

    move-result-wide v5

    const-wide/16 v0, 0x1

    cmp-long v0, v5, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 160
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    .line 162
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->g()Ljava/lang/String;

    move-result-object v4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string p3, "15"

    .line 165
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v8

    move-object v3, p2

    .line 160
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-eqz p5, :cond_1

    if-lez p2, :cond_1

    .line 167
    sget-object p3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string p4, "MediaContents.Favorites.CONTENT_URI"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    move p1, p2

    :goto_0
    return p1
.end method

.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hearts"

    .line 181
    invoke-virtual {p2, v0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 182
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string p3, "MediaContents.Favorites.CONTENT_URI"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT album_id, number_of_tracks AS data1, cp_attrs, dummy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FROM ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-static {}, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    .line 43
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 44
    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    .line 45
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "album_id"

    .line 46
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "data1"

    .line 47
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "cp_attrs"

    .line 48
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 49
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "album_id"

    .line 50
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data1"

    .line 51
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "favorite_name"

    const-string v4, "Favourites"

    .line 52
    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cp_attrs"

    .line 53
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "category_type=? AND category_id=?"

    const-string v3, "hearts"

    const/4 v4, 0x2

    .line 61
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v7, 0x10004

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-wide/16 v7, -0xb

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 57
    invoke-virtual {p2, v3, v6, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    const-string v2, "FavoriteProvider-FavoritesDbHelper"

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFavoriteTracksInfo : updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " with "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 64
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string p3, "MediaContents.Favorites.CONTENT_URI"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 67
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Z)I
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    const v1, 0x10004

    const-wide/16 v2, -0xd

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;IJ)J

    move-result-wide v7

    const-wide/16 v0, 0x1

    cmp-long v0, v7, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 82
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    .line 84
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->d()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const-string v0, "3"

    .line 87
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    move-object v5, p2

    .line 82
    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-eqz p3, :cond_1

    if-lez p2, :cond_1

    .line 89
    sget-object p3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v0, "MediaContents.Favorites.CONTENT_URI"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    move p1, p2

    :goto_0
    return p1
.end method

.method public final c(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Z)I
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    const v1, 0x10004

    const-wide/16 v2, -0xc

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;IJ)J

    move-result-wide v7

    const-wide/16 v0, 0x1

    cmp-long v0, v7, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 108
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    .line 110
    invoke-static {}, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->c()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const-string v0, "3"

    .line 113
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    move-object v5, p2

    .line 108
    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-eqz p3, :cond_1

    if-lez p2, :cond_1

    .line 115
    sget-object p3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v0, "MediaContents.Favorites.CONTENT_URI"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    move p1, p2

    :goto_0
    return p1
.end method

.method public final d(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Z)I
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    const v1, 0x10004

    const-wide/16 v2, -0xe

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;IJ)J

    move-result-wide v7

    const-wide/16 v0, 0x1

    cmp-long v0, v7, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    .line 136
    invoke-static {}, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->e()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p2

    .line 134
    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-eqz p3, :cond_1

    if-lez p2, :cond_1

    .line 141
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string p3, "MediaContents.Favorites.CONTENT_URI"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
