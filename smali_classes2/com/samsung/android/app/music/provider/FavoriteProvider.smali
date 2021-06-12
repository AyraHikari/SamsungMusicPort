.class public final Lcom/samsung/android/app/music/provider/FavoriteProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/FavoriteProvider$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/FavoriteProvider$Companion;

.field private static final e:Landroid/content/UriMatcher;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/database/sqlite/SQLiteDatabase;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/music/provider/FavoriteProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/FavoriteProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->a:Lcom/samsung/android/app/music/provider/FavoriteProvider$Companion;

    .line 969
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/favorites"

    const/16 v3, 0x64

    .line 970
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/favorites/#"

    .line 971
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/favorites/albumart"

    const/16 v3, 0x6e

    .line 972
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/favorites/albumart/#"

    const/16 v3, 0x6f

    .line 973
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/favorite_tracks"

    const/16 v3, 0xc8

    .line 974
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/favorite_tracks/#"

    .line 975
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/favorite_tracks/info"

    const/16 v3, 0xc9

    .line 976
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/favorite_tracks/offline_sync"

    const/16 v3, 0xd2

    .line 977
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/favorite_tracks/online_sync"

    const/16 v3, 0xd3

    .line 978
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 969
    sput-object v0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->e:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "musicProviderHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    return-void
.end method

.method private final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)I
    .locals 11

    const-string v0, "FavoriteProvider"

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveFavoriteEntry from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v5, "hearts"

    const-string v8, "display_order"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move v9, p3

    move v10, p4

    .line 736
    invoke-static/range {v2 .. v10}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method private final a(Landroid/net/Uri;I[Landroid/content/ContentValues;)I
    .locals 5

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 1010
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1016
    :try_start_0
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p3, v2

    .line 197
    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->a(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_1
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1018
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 208
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    .line 1021
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 15

    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 910
    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    const-string v3, "thumbnail_id"

    .line 911
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "thumbnail_type"

    .line 912
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "image_url"

    .line 913
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "thumbnail_id=? AND thumbnail_type=?"

    const/4 v6, 0x2

    .line 916
    new-array v10, v6, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v3, v10, v14

    const/4 v3, 0x1

    aput-object v4, v10, v3

    const-string v7, "favorite_album_art"

    const-string v4, "_id"

    const-string v6, "image_url"

    .line 920
    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    .line 918
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;

    .line 929
    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v6, v4

    check-cast v6, Landroid/database/Cursor;

    if-eqz v6, :cond_0

    .line 930
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v2, "_id"

    .line 1153
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v7, "image_url"

    .line 1154
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v3

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 934
    :goto_0
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    const-string v1, "favorite_album_art"

    const-string v4, "_id=?"

    .line 939
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v14

    move-object/from16 v5, p1

    .line 936
    invoke-virtual {v5, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 941
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p1

    :goto_1
    if-eqz v2, :cond_2

    .line 943
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    :goto_2
    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 929
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 16

    move-object/from16 v0, p3

    const-string v1, "category_type"

    .line 847
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "category_id"

    .line 848
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 849
    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    const-string v6, "hearts"

    const-string v5, "_id"

    .line 852
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "category_type=? AND category_id=?"

    const/4 v13, 0x2

    .line 854
    new-array v9, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v1, v9, v14

    const/4 v15, 0x1

    aput-object v2, v9, v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    .line 850
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;

    .line 855
    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    :try_start_0
    move-object v7, v5

    check-cast v7, Landroid/database/Cursor;

    if-eqz v7, :cond_1

    .line 856
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v3, v7

    :cond_0
    if-eqz v3, :cond_1

    const-string v4, "_id"

    .line 1138
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 858
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    :cond_1
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v4, :cond_3

    const-string v3, "category_type"

    .line 862
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v3, "category_id"

    .line 863
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v3, "hearts"

    const-string v5, "category_type=? AND category_id=?"

    .line 868
    new-array v6, v13, [Ljava/lang/String;

    aput-object v1, v6, v14

    aput-object v2, v6, v15

    move-object/from16 v1, p1

    .line 864
    invoke-virtual {v1, v3, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-nez v4, :cond_2

    .line 870
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    move-object/from16 v1, p1

    .line 872
    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 855
    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final a(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    const/4 v0, 0x0

    .line 144
    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    if-eqz p3, :cond_7

    const/16 v2, 0x64

    const-wide/16 v3, 0x0

    if-eq p2, v2, :cond_4

    const/16 v2, 0x6e

    if-eq p2, v2, :cond_2

    const/16 v2, 0xc9

    if-ne p2, v2, :cond_1

    .line 171
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 996
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "favorite_tracks_info"

    .line 172
    invoke-virtual {p2, v2, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    cmp-long p3, v5, v3

    if-lez p3, :cond_0

    .line 174
    invoke-static {p1, v5, v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 176
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZILjava/lang/Object;)V

    .line 177
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1002
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    .line 180
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insert not implemented. uri="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 160
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->c(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 161
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide p2

    cmp-long v0, p2, v3

    if-lez v0, :cond_6

    .line 162
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 165
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide p2

    cmp-long v0, p2, v3

    if-lez v0, :cond_6

    .line 166
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 149
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->c(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 150
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide p2

    cmp-long v0, p2, v3

    if-lez v0, :cond_6

    .line 151
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 154
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide p2

    cmp-long v0, p2, v3

    if-lez v0, :cond_6

    .line 155
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :cond_6
    :goto_0
    return-object v1

    :cond_7
    return-object v1
.end method

.method private final a()V
    .locals 8

    const-string v0, "FavoriteProvider"

    const-string v1, "rearrangeFavoritePlayOrder"

    .line 799
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SELECT * FROM (SELECT count(*) AS count_of_play_order FROM favorite_tracks_map GROUP BY play_order) WHERE count_of_play_order > 1"

    .line 806
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 807
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 1126
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x0

    .line 808
    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    check-cast v4, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v5, v0

    check-cast v5, Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 809
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 812
    :cond_0
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 808
    :try_start_2
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "tempFavoriteTable"

    const-string v4, "favorite_tracks_map"

    const-string v5, "play_order"

    .line 817
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DROP TABLE IF EXISTS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 819
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " AS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "SELECT * FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ORDER BY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 818
    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 824
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " SET "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "(SELECT rowid FROM "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " WHERE "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "._id="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "._id)"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 823
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 827
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 810
    :cond_1
    :goto_0
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 828
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1132
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1135
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 829
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v0, "FavoriteProvider"

    .line 830
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rearrangeFavoritePlayOrder takes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v1

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v4, v1

    .line 808
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 1135
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private final a(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 834
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 837
    array-length v2, p2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int v3, v0, v2

    .line 838
    new-array v3, v3, [Ljava/lang/String;

    .line 840
    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->b(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 1136
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->b()I

    move-result v5

    .line 840
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v5

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 841
    invoke-static {p2, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v3
.end method

.method private final b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)I
    .locals 11

    const-string v0, "FavoriteProvider"

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveFavoriteTrackEntry from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v5, "favorite_tracks_map"

    const-string v8, "play_order"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move v9, p3

    move v10, p4

    .line 756
    invoke-static/range {v2 .. v10}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method private final b(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v3, "play_order"

    .line 221
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 1026
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 222
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->h(Landroid/net/Uri;)Z

    move-result v5

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v5, :cond_0

    const-string v3, "favorite_tracks_map"

    .line 223
    invoke-virtual {v4, v3, v9, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->i(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UPDATE favorite_tracks_map "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "SET "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x3d

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2b

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v3, v2

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT ifnull(max("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), -1) FROM favorite_tracks_map"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual {v4, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    .line 240
    move-object v5, v9

    check-cast v5, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v10, v3

    check-cast v10, Landroid/database/Cursor;

    if-eqz v10, :cond_2

    .line 241
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 242
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 244
    :cond_2
    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    :try_start_2
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 248
    :goto_0
    array-length v3, v2

    const/4 v5, 0x1

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    const-string v0, "FavoriteProvider"

    const-string v2, "bulkInsertFavoriteTracks : values is empty so rollback changes."

    .line 249
    invoke-static {v5, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1037
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v8

    :cond_4
    :try_start_3
    const-string v3, "audio_id"

    const-string v10, "play_order"

    const-string v11, "modified_state"

    .line 253
    filled-new-array {v3, v10, v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    .line 260
    new-instance v3, Lcom/samsung/android/app/music/provider/MediaUnionInserter;

    iget-object v11, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "favorite_tracks_map"

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1032
    array-length v10, v2

    move-wide v11, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v10, :cond_7

    aget-object v7, v2, v6

    const-string v13, "audio_id"

    .line 262
    invoke-virtual {v7, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "play_order"

    .line 263
    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_5

    const-wide/16 v14, 0x1

    add-long/2addr v11, v14

    move-wide v14, v11

    goto :goto_3

    .line 265
    :cond_5
    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    :goto_3
    const-string v9, "modified_state"

    .line 266
    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    goto :goto_4

    .line 267
    :cond_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_4
    const/4 v9, 0x3

    .line 268
    new-array v9, v9, [Ljava/lang/String;

    .line 269
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v8

    .line 270
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v5

    .line 271
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x2

    aput-object v7, v9, v13

    .line 268
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v9, 0x0

    .line 273
    invoke-static {v3, v7, v9, v13, v9}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a(Lcom/samsung/android/app/music/provider/MediaUnionInserter;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 275
    :cond_7
    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a()I

    move-result v3

    .line 277
    sget-boolean v5, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v5, :cond_8

    const-string v5, "UPDATE favorite_tracks_map SET audio_cp_attrs=(SELECT cp_attrs FROM audio_meta WHERE audio_id=audio_meta._id), audio_source_id=(SELECT source_id FROM audio_meta WHERE audio_id=audio_meta._id), storage_order=(SELECT CASE WHEN cp_attrs&15=1 THEN 100 WHEN cp_attrs&15=2 THEN 200 WHEN cp_attrs&15=8 THEN 300 END FROM audio_meta WHERE audio_id=audio_meta._id)WHERE audio_data IS NULL OR storage_order=0"

    .line 279
    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "UPDATE favorite_tracks_map SET audio_cp_attrs=(SELECT CASE WHEN audio_cp_attrs=524289 THEN 65537 ELSE audio_cp_attrs END), audio_data=(SELECT _data FROM audio_meta WHERE audio_id=audio_meta._id) WHERE audio_data IS NULL OR storage_order=0"

    .line 293
    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const-string v5, "UPDATE favorite_tracks_map SET audio_data=(SELECT _data FROM audio_meta WHERE audio_id=audio_meta._id) WHERE audio_data IS NULL"

    .line 303
    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 309
    :goto_5
    sget-object v5, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper;->a:Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper$Companion;

    iget-object v6, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    iget-object v7, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v6, v7, v0, v2}, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)V

    .line 310
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1034
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1037
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 319
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_9
    return v3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 240
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    :try_start_5
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 1037
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2

    const-string v0, "favorite_album_art"

    const/4 v1, 0x0

    .line 947
    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 6

    .line 1143
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "display_order"

    const-wide/16 v1, 0x0

    .line 886
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->i(Landroid/net/Uri;)Z

    move-result p2

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 888
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE hearts SET "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+1 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WHERE NOT(category_type=65540 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AND category_id=-11)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 887
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 894
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT ifnull(max("

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), 0) FROM hearts"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 893
    invoke-virtual {p1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;

    .line 896
    move-object v0, v3

    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v4, p2

    check-cast v4, Landroid/database/Cursor;

    if-eqz v4, :cond_1

    .line 897
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    .line 898
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 900
    :cond_1
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 896
    :try_start_2
    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_0
    const-string p2, "display_order"

    .line 902
    invoke-virtual {p3, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p2, "display_order"

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    .line 903
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "hearts"

    .line 904
    invoke-virtual {p1, p2, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    .line 905
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1149
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1152
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide p2

    :catchall_0
    move-exception p3

    goto :goto_1

    :catch_0
    move-exception p3

    move-object v0, p3

    .line 896
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    .line 1152
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method

.method private final c(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 11

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 1042
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "favorite_tracks_map"

    .line 332
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->h(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHERE audio_data IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(SELECT audio_data FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", audio WHERE audio_data=audio._data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND cp_attrs=65537)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "PlaylistProvider"

    const-string v3, "bulkInsertFavoriteTracksSyncOffline delete local tracks"

    .line 338
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (audio_id, audio_source_id, play_order) VALUES (-1,?,?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    const/4 v3, 0x0

    .line 344
    check-cast v3, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v4, v2

    check-cast v4, Landroid/database/sqlite/SQLiteStatement;

    .line 1048
    array-length v5, p2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, p2, v6

    const-string v8, "audio_source_id"

    .line 346
    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v4, v9, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v8, 0x2

    const-string v9, "play_order"

    .line 347
    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-virtual {v4, v8, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 348
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 349
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 347
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Number"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 351
    :cond_2
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    :try_start_2
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 352
    array-length v2, p2

    if-lez v2, :cond_3

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " SET audio_id=(SELECT CASE WHEN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(SELECT _id FROM audio_meta WHERE source_id=audio_source_id) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "IS NULL THEN -1 ELSE (SELECT _id FROM audio_meta WHERE source_id=audio_source_id) END) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "WHERE audio_id=-1;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SET audio_data="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(SELECT _data FROM audio WHERE _id=audio_id) WHERE audio_data is NULL"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 368
    sget-object v1, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper;->a:Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper$Companion;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v3, v4, p1, p2}, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)V

    .line 370
    :cond_3
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1050
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1053
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 377
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_4
    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 344
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 1053
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method private final d(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 390
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1054
    array-length v5, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v2, v7

    const-string v9, "audio_source_id"

    .line 393
    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "title"

    .line 394
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "album"

    .line 395
    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "artist"

    .line 396
    invoke-virtual {v8, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "explicit"

    .line 397
    invoke-virtual {v8, v13}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    const-string v14, "is_celeb"

    .line 398
    invoke-virtual {v8, v14}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    .line 400
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "source_id"

    .line 401
    invoke-virtual {v15, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "title"

    .line 402
    invoke-virtual {v15, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "explicit"

    .line 403
    invoke-virtual {v15, v6, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v14, :cond_0

    const-string v6, "is_celeb"

    .line 404
    invoke-virtual {v15, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    const-string v6, "duration"

    const/4 v10, 0x0

    .line 406
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v6, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "album"

    .line 407
    invoke-virtual {v15, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "album_id"

    const-string v10, "source_album_id"

    .line 410
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 408
    invoke-virtual {v15, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "album_artist"

    .line 412
    invoke-virtual {v15, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "artist"

    .line 413
    invoke-virtual {v15, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "artist_id"

    const-string v10, "source_artist_id"

    .line 416
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 414
    invoke-virtual {v15, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "image_url"

    const-string v10, "image_url"

    .line 421
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 419
    invoke-virtual {v15, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "image_url_big"

    const-string v10, "image_url_big"

    .line 425
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 423
    invoke-virtual {v15, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 428
    move-object v6, v3

    check-cast v6, Ljava/util/Map;

    const-string v8, "sourceId"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "\'"

    .line 429
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\',"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 431
    :cond_1
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 443
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cp_attrs&2 "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "AND source_id IN ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 445
    iget-object v7, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "audio_meta"

    const-string v4, "_id"

    const-string v5, "source_id"

    .line 447
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const-string v12, "source_id"

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 445
    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;

    const/4 v5, 0x0

    .line 453
    move-object v7, v5

    check-cast v7, Ljava/lang/Throwable;

    :try_start_0
    move-object v8, v4

    check-cast v8, Landroid/database/Cursor;

    if-eqz v8, :cond_7

    .line 454
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    const-string v9, "_id"

    .line 456
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "source_id"

    .line 457
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1057
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_2

    .line 459
    :cond_5
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 460
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 461
    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    check-cast v13, Landroid/content/ContentValues;

    const-string v14, "audio_id"

    .line 462
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v13, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 463
    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1060
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 465
    :cond_7
    :goto_2
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 453
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 468
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 1066
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 469
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 470
    move-object v7, v3

    check-cast v7, Ljava/util/Map;

    .line 1072
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 471
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    const-string v10, "audio_id"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    if-nez v9, :cond_8

    .line 473
    iget-object v9, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    .line 474
    iget-object v10, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 475
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    const v12, 0x80002

    .line 473
    invoke-interface {v9, v10, v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Landroid/content/ContentValues;

    move-result-object v9

    .line 478
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string v11, "audio_id"

    const-string v12, "_id"

    .line 480
    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    .line 478
    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "album_id"

    .line 483
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 485
    iget-object v10, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    .line 486
    iget-object v11, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 487
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroid/content/ContentValues;

    const-string v8, "albumId"

    .line 488
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const v15, 0x80002

    .line 484
    invoke-static/range {v10 .. v15}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    goto :goto_3

    .line 499
    :cond_9
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1074
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1077
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v4, "play_order"

    .line 504
    iget-object v7, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 1082
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 505
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->h(Landroid/net/Uri;)Z

    move-result v8

    const-wide/16 v9, -0x1

    if-eqz v8, :cond_a

    const-string v4, "favorite_tracks_map"

    .line 506
    invoke-virtual {v7, v4, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 513
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->i(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 515
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UPDATE favorite_tracks_map "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "SET "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3d

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2b

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 514
    invoke-virtual {v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_4

    .line 521
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT ifnull(max("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), -1) FROM favorite_tracks_map"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-virtual {v7, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;

    .line 523
    move-object v8, v5

    check-cast v8, Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object v11, v4

    check-cast v11, Landroid/database/Cursor;

    if-eqz v11, :cond_c

    .line 524
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    .line 525
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 527
    :cond_c
    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 523
    :try_start_4
    invoke-static {v4, v8}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 531
    :goto_4
    array-length v4, v2

    if-nez v4, :cond_d

    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_e

    const-string v2, "FavoriteProvider"

    const-string v3, "bulkInsertFavoriteTracksSyncOnline : values is empty "

    .line 532
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    goto/16 :goto_9

    :cond_e
    const-string v4, "audio_id"

    const-string v8, "play_order"

    .line 536
    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v20

    .line 542
    new-instance v4, Lcom/samsung/android/app/music/provider/MediaUnionInserter;

    iget-object v8, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "favorite_tracks_map"

    const/16 v21, 0x0

    const/16 v22, 0x8

    const/16 v23, 0x0

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    invoke-direct/range {v17 .. v23}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1088
    array-length v8, v2

    move-wide v10, v9

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_11

    aget-object v12, v2, v9

    const-string v13, "audio_source_id"

    .line 545
    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 547
    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_f
    check-cast v13, Landroid/content/ContentValues;

    const-string v14, "audio_id"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "play_order"

    .line 548
    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_10

    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    move-wide v14, v10

    goto :goto_7

    .line 550
    :cond_10
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    :goto_7
    const/4 v12, 0x2

    .line 552
    new-array v5, v12, [Ljava/lang/String;

    .line 553
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    aput-object v13, v5, v16

    .line 554
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    .line 552
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v13, 0x0

    .line 556
    invoke-static {v4, v5, v13, v12, v13}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a(Lcom/samsung/android/app/music/provider/MediaUnionInserter;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    move-object v5, v13

    goto :goto_6

    .line 558
    :cond_11
    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a()I

    move-result v6

    .line 560
    sget-boolean v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v3, :cond_12

    const-string v3, "UPDATE favorite_tracks_map SET audio_cp_attrs=(SELECT cp_attrs FROM audio_meta WHERE audio_id=audio_meta._id), audio_source_id=(SELECT CASE WHEN cp_attrs=524290 THEN source_id ELSE local_track_id END FROM audio_meta WHERE audio_id=audio_meta._id), storage_order=(SELECT CASE WHEN cp_attrs&15=1 THEN 100 WHEN cp_attrs&15=2 THEN 200 WHEN cp_attrs&15=8 THEN 300 END FROM audio_meta WHERE audio_id=audio_meta._id)WHERE audio_data IS NULL OR storage_order=0"

    .line 562
    invoke-virtual {v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "audio_source_id"

    .line 580
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE favorite_tracks_map SET audio_cp_attrs=(SELECT CASE WHEN audio_cp_attrs=524289 THEN 65537 ELSE audio_cp_attrs END), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "audio_data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "WHERE audio_data IS NULL OR storage_order=0"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 583
    invoke-virtual {v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    const-string v3, "UPDATE favorite_tracks_map SET audio_data=(SELECT _data FROM audio_meta WHERE audio_id=audio_meta._id) WHERE audio_data IS NULL"

    .line 593
    invoke-virtual {v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 599
    :goto_8
    sget-object v3, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper;->a:Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper$Companion;

    iget-object v4, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    iget-object v5, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)V

    move/from16 v16, v6

    .line 600
    :goto_9
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1090
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1093
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 609
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v1, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_13
    return v16

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 523
    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_a
    :try_start_6
    invoke-static {v4, v8}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 1093
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_2
    move-exception v0

    .line 1077
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v7, v0

    .line 453
    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_b
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FavoriteProvider"

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update() uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", selectionArgs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 661
    sget-object v0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 718
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "update not implemented. uri="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 720
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 704
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 1112
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "favorite_tracks_info"

    .line 705
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 713
    sget-object v1, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZILjava/lang/Object;)V

    .line 714
    iget-object p3, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    sget-object p4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b:Landroid/net/Uri;

    const-string v1, "MediaContents.Playlists.\u2026D_VIEW_NOTIFY_CONTENT_URI"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 715
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1118
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :pswitch_1
    const-string v0, "move"

    .line 676
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "play_order"

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_from"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 681
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)I

    move-result v0

    goto :goto_0

    .line 683
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Need to specify "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " when using \'move\' parameter"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorite_tracks_map"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    .line 693
    sget-object v1, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper;->a:Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper$Companion;

    .line 694
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    .line 695
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 693
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    move p2, v0

    goto :goto_1

    :cond_3
    const-string v0, "move"

    .line 664
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string p1, "display_order"

    .line 666
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_from"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    .line 667
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_to"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    .line 669
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    iget-object p4, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p4, p3, p2}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)I

    move-result p1

    return p1

    .line 671
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Need to specify "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " when using \'move\' parameter"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 673
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "hearts"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 725
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_6
    return p2

    :cond_7
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FavoriteProvider"

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete() uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", selectionArgs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    sget-object v0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 627
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 1098
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "favorite_tracks_map"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 633
    sget-object v2, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper;->a:Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper$Companion;

    .line 634
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    .line 635
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 633
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 640
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1104
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    .line 643
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delete not implemented. uri="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 645
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    :cond_1
    const-string v0, "NOT (category_type==65540 AND category_id==-11)"

    .line 623
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "hearts"

    invoke-virtual {p2, v1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 650
    :goto_3
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_5
    return v1
.end method

.method public a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FavoriteProvider"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bulkInsert() uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", values="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 139
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->a(Landroid/net/Uri;I[Landroid/content/ContentValues;)I

    move-result p1

    goto :goto_0

    .line 138
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->d(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    goto :goto_0

    .line 136
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0xd2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v2, p4

    const-string v3, "uri"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "FavoriteProvider"

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query() uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", projection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", selection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", selectionArgs="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", sortOrder="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-static {v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 54
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 55
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->e(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 56
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 58
    sget-object v8, Lcom/samsung/android/app/music/provider/FavoriteProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v8, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const/4 v11, 0x0

    sparse-switch v8, :sswitch_data_0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query not implemented. uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :sswitch_0
    const-string v8, "favorite_tracks_info"

    .line 100
    invoke-virtual {v3, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_1
    const-string v8, "favorite_tracks_map"

    const-string v12, "audio"

    .line 79
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    if-eqz v4, :cond_4

    .line 990
    array-length v13, v4

    const/4 v14, 0x0

    :goto_0
    if-ge v11, v13, :cond_4

    aget-object v15, v4, v11

    add-int/lit8 v16, v14, 0x1

    .line 81
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v9, -0x53fd20b9

    if-eq v6, v9, :cond_2

    const v9, 0x171ba

    if-eq v6, v9, :cond_1

    const v9, 0x5897e6f

    if-eq v6, v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "album"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ifnull("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", virtual_album) AS "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v14

    goto :goto_1

    :cond_1
    const-string v6, "_id"

    .line 81
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "._id AS "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v14

    goto :goto_1

    :cond_2
    const-string v6, "artist"

    .line 81
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ifnull("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", virtual_artist) AS "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v14

    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move/from16 v14, v16

    move-object/from16 v6, p3

    move-object/from16 v9, p5

    goto/16 :goto_0

    .line 92
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "._id=audio_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->b(Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, " AND "

    .line 95
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "modified_state!=2"

    .line 96
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2

    :sswitch_2
    const-string v6, "favorite_album_art"

    .line 72
    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v6, "_id=?"

    .line 73
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v8, "uri.pathSegments[uri.pathSegments.size]"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_3
    const-string v6, "favorite_album_art"

    .line 70
    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_4
    const-string v6, "hearts"

    .line 61
    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->b(Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "modified_state!=2"

    .line 64
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_6
    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_7

    const/4 v11, 0x1

    :cond_7
    if-eqz v11, :cond_8

    .line 67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 110
    :cond_8
    :goto_2
    iget-object v6, v0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 113
    invoke-direct {v0, v5, v2}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->a(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, v3

    move-object v3, v6

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v8

    move-object v8, v9

    move-object/from16 v9, p5

    .line 109
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 118
    iget-object v3, v0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_9
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x6e -> :sswitch_3
        0x6f -> :sswitch_2
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 122
    check-cast v0, Landroid/net/Uri;

    if-eqz p2, :cond_1

    .line 125
    sget-object v0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 126
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->a(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 128
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-object p2

    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const-string p2, "method"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const p3, -0x7ebf88a0

    if-ne p2, p3, :cond_0

    const-string p2, "favorite_track_rearrange_play_order"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 777
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/FavoriteProvider;->a()V

    const/4 p1, 0x0

    return-object p1

    .line 780
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "call not implemented. method="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 782
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 2

    .line 770
    sget-object v0, Lcom/samsung/android/app/music/provider/FavoriteProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const-wide/16 v0, -0x1

    long-to-int v0, v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7ebf88a0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "favorite_track_rearrange_play_order"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
