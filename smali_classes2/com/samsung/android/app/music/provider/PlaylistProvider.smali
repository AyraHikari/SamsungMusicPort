.class public final Lcom/samsung/android/app/music/provider/PlaylistProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/PlaylistProvider$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/PlaylistProvider$Companion;

.field private static final e:Landroid/content/UriMatcher;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/database/sqlite/SQLiteDatabase;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/music/provider/PlaylistProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/PlaylistProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a:Lcom/samsung/android/app/music/provider/PlaylistProvider$Companion;

    .line 1961
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists"

    const/16 v3, 0x64

    .line 1962
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/#"

    const/16 v3, 0x65

    .line 1963
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/#/members"

    const/16 v3, 0xc8

    .line 1964
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/#/members/#"

    const/16 v3, 0xcd

    .line 1965
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/multiple_members"

    const/16 v3, 0xce

    .line 1966
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/#/members/online_sync"

    const/16 v3, 0x44c

    .line 1968
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/sync_all_bulk_insert/#"

    const/16 v3, 0x12c

    .line 1970
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/sync_playlist_queue"

    const/16 v3, 0x12d

    .line 1971
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists_meta"

    const/16 v3, 0x190

    .line 1973
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists_meta/cardview"

    const/16 v3, 0x191

    .line 1974
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/conflict"

    const/16 v3, 0x1f4

    .line 1976
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/conflict_history"

    const/16 v3, 0x1f5

    .line 1977
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlist_server_response_info"

    const/16 v3, 0x258

    .line 1979
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/recommended_tracks"

    const/16 v3, 0x5dc

    .line 1981
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/recommended_tracks/#"

    const/16 v3, 0x5dd

    .line 1982
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1961
    sput-object v0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->e:Landroid/content/UriMatcher;

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

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    return-void
.end method

.method private final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)I
    .locals 11

    const-string v0, "PlaylistProvider"

    .line 1886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movePlaylistEntry from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v5, "audio_playlists"

    const-string v8, "display_order"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move v9, p3

    move v10, p4

    .line 1887
    invoke-static/range {v2 .. v10}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method private final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JII)I
    .locals 12

    const-string v0, "PlaylistProvider"

    .line 1909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movePlaylistMemberEntry fromOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " toOrder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p6

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", playlistId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v3, p3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1907
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1913
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "audio_playlists_map"

    const-string v7, "playlist_id=?"

    const/4 v0, 0x1

    .line 1920
    new-array v8, v0, [Ljava/lang/String;

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v8, v1

    const-string v9, "play_order"

    move-object v3, p1

    move-object v4, p2

    move/from16 v10, p5

    .line 1914
    invoke-static/range {v3 .. v11}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    .line 1285
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->g(Landroid/net/Uri;)J

    move-result-wide v3

    .line 1287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2340
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1289
    :try_start_0
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    const-string v0, "PlaylistProvider"

    .line 1293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bulkInsertPlaylistMembersSyncOffline : skip syncUp for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1290
    invoke-static {v7, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2351
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v6

    .line 1298
    :cond_0
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->h(Landroid/net/Uri;)Z

    move-result v5

    const/4 v8, 0x2

    if-eqz v5, :cond_1

    const-string v5, "DELETE FROM audio_playlists_map WHERE playlist_id=? AND audio_data IN (SELECT audio_data FROM audio_playlists_map, audio WHERE audio_data=audio._data  AND playlist_id=? AND cp_attrs=65537)"

    .line 1303
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/String;

    aput-object v9, v10, v6

    aput-object v9, v10, v7

    invoke-virtual {v2, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "PlaylistProvider"

    const-string v9, "bulkInsertPlaylistMembersSyncOffline delete local tracks"

    .line 1304
    invoke-static {v5, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v5, "INSERT INTO audio_playlists_map (audio_id, audio_source_id, playlist_id, play_order) VALUES (-1,?,?,?)"

    .line 1307
    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;

    const/4 v9, 0x0

    .line 1308
    check-cast v9, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object v10, v5

    check-cast v10, Landroid/database/sqlite/SQLiteStatement;

    .line 2346
    array-length v11, v0

    :goto_0
    if-ge v6, v11, :cond_3

    aget-object v12, v0, v6

    const-string v13, "audio_source_id"

    .line 1310
    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v7, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1311
    invoke-virtual {v10, v8, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v13, 0x3

    const-string v14, "play_order"

    .line 1312
    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_2

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    invoke-virtual {v10, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1313
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1314
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1312
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.Number"

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1316
    :cond_3
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1308
    :try_start_3
    invoke-static {v5, v9}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1317
    array-length v0, v0

    if-lez v0, :cond_4

    const-string v5, "UPDATE audio_playlists_map SET audio_id=(SELECT CASE WHEN (SELECT _id FROM audio_meta WHERE source_id=audio_source_id) IS NULL THEN -1 ELSE (SELECT _id FROM audio_meta WHERE source_id=audio_source_id) END) WHERE audio_id=-1;"

    .line 1321
    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "UPDATE audio_playlists_map SET audio_data=(SELECT _data FROM audio WHERE _id=audio_id) WHERE audio_data is NULL"

    .line 1329
    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1334
    sget-object v5, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;

    iget-object v6, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1336
    :cond_4
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2348
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2351
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1343
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v4, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_5
    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 1308
    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    invoke-static {v5, v9}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 2351
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private final a(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "move"

    move-object/from16 v8, p1

    .line 1831
    invoke-virtual {v8, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "display_order"

    .line 1833
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_from"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1834
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_to"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 1838
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    iget-object v4, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v4, v3, v0}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)I

    move-result v0

    return v0

    .line 1836
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to specify "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " when using \'move\' parameter"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_1
    const-string v2, "name"

    .line 1841
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1842
    sget-boolean v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->k:Z

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->d(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1843
    iget-object v9, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "audio_playlists"

    const-string v3, "_data"

    .line 1845
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 1843
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    const/4 v4, 0x0

    .line 1851
    check-cast v4, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v3

    check-cast v5, Landroid/database/Cursor;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 1852
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1853
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-le v7, v6, :cond_2

    const-string v7, "PlaylistProvider"

    const-string v9, "affected playlist count is more than two."

    invoke-static {v6, v7, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v7, 0x0

    .line 1858
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v5

    check-cast v11, Ljava/lang/CharSequence;

    const/16 v12, 0x2f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v10

    add-int/2addr v10, v6

    if-eqz v5, :cond_3

    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_data"

    .line 1859
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1851
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1861
    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 1858
    :cond_3
    :try_start_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 1851
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1864
    :cond_4
    :goto_1
    iget-object v9, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2453
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_3
    const-string v2, "audio_playlists"

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 1865
    invoke-virtual {v9, v2, v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_5

    .line 1867
    sget-object v2, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper$Companion;

    .line 1868
    iget-object v3, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    .line 1869
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 1867
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1875
    :cond_5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2459
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2462
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1876
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    iget-object v3, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return v12

    :catchall_1
    move-exception v0

    .line 2462
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private final a(Landroid/net/Uri;I[Landroid/content/ContentValues;)I
    .locals 5

    .line 437
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2154
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2160
    :try_start_0
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p3, v2

    .line 439
    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    :cond_1
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2162
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2165
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 450
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    .line 2165
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 10

    const-string v0, "name"

    .line 833
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 835
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->k:Z

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    const-string v1, "source_playlist_id"

    .line 836
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->d(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FavoriteList#328795!432@1341"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_1

    .line 840
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    .line 841
    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "MediaStore.Audio.Playlists.EXTERNAL_CONTENT_URI"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 842
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "name"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-static {v1, v5, v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "source_playlist_id"

    .line 847
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 845
    invoke-virtual {p3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    :goto_0
    const-string v1, "_data"

    .line 851
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "_data"

    .line 853
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 851
    invoke-virtual {p3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    const-string v1, "is_sync"

    .line 855
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "is_sync"

    .line 856
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :cond_3
    const-string v1, "_data"

    .line 858
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "source_playlist_id"

    .line 859
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "date_added"

    .line 863
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    const-string v6, "source_playlist_id"

    move-object v9, v6

    move-object v6, v1

    move-object v1, v9

    :goto_2
    const-string v7, "_data"

    .line 868
    invoke-static {v1, v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 867
    invoke-virtual {p3, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v1, "is_sync"

    .line 873
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "is_sync"

    .line 874
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    :cond_6
    :goto_3
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    if-eqz v1, :cond_7

    const-string v1, "name_pinyin"

    .line 881
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/PinyinUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v0, "date_added"

    .line 885
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const-string v0, "date_added"

    .line 886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v1, 0x3e8

    int-to-long v7, v1

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2256
    :goto_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 892
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->i(Landroid/net/Uri;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    const-string p2, "UPDATE audio_playlists SET display_order=display_order+1"

    .line 893
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string p2, "SELECT ifnull(max(display_order), -1) FROM audio_playlists"

    .line 895
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;

    .line 898
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v5, p2

    check-cast v5, Landroid/database/Cursor;

    if-eqz v5, :cond_a

    .line 899
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 900
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 902
    :cond_a
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    :try_start_2
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_5
    const-string p2, "display_order"

    .line 904
    invoke-virtual {p3, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p2, "display_order"

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 905
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "audio_playlists"

    .line 906
    invoke-virtual {p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    .line 907
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2262
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2265
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide p2

    :catchall_0
    move-exception p3

    goto :goto_6

    :catch_0
    move-exception p3

    move-object v1, p3

    .line 898
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    :try_start_4
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    .line 2265
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 2

    packed-switch p2, :pswitch_data_0

    .line 819
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "queryPlaylistMeta invalid uri "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 814
    :pswitch_0
    sget-object p2, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    goto :goto_0

    .line 810
    :pswitch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    :goto_0
    const/4 v1, 0x0

    .line 822
    invoke-static {p2, p4, p5, p7, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 826
    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    .line 823
    invoke-static {p6, v0, p4}, Lcom/samsung/android/app/music/provider/MusicProvider;->a([Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 828
    invoke-virtual {p1, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 829
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    move-object/from16 v0, p4

    .line 1578
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1580
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1581
    move-object/from16 v4, p5

    check-cast v4, Ljava/lang/Iterable;

    .line 2389
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x29

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "?,"

    .line 1582
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v8, 0x3e7

    if-lt v5, v8, :cond_0

    .line 1585
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1589
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1590
    check-cast v3, Ljava/util/Collection;

    .line 2391
    new-array v2, v7, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v13, v2

    check-cast v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 1586
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1595
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1598
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 2391
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1601
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1602
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1607
    check-cast v3, Ljava/util/Collection;

    .line 2394
    new-array v0, v7, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v12, v0

    check-cast v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 1603
    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1612
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2394
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1615
    :cond_4
    :goto_1
    check-cast v1, Ljava/util/Collection;

    .line 2396
    new-array v0, v7, [Landroid/database/Cursor;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, [Landroid/database/Cursor;

    .line 1615
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    check-cast v1, Landroid/database/Cursor;

    return-object v1

    .line 2396
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    const/4 v2, 0x0

    const/4 v12, 0x1

    if-nez v11, :cond_0

    const-string v1, "PlaylistProvider"

    const-string v3, "AUDIO_PLAYLISTS_MULTIPLE_MEMBERS should be array of playlist Id - return null"

    .line 204
    invoke-static {v12, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 211
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v13, "audio_playlists_map"

    const-string v14, "audio"

    const-string v15, "audio_id"

    const-string v9, "playlist_id"

    const/16 v16, 0x0

    if-eqz v1, :cond_7

    .line 2144
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v7, v1, v4

    add-int/lit8 v8, v5, 0x1

    .line 220
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v12, -0x53fd20b9

    if-eq v2, v12, :cond_4

    const v12, -0x162d8408

    if-eq v2, v12, :cond_3

    const v12, 0x171ba

    if-eq v2, v12, :cond_2

    const v12, 0x5897e6f

    if-eq v2, v12, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "album"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ifnull("

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", virtual_album) AS "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    goto :goto_1

    :cond_2
    const-string v2, "_id"

    .line 220
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "._id AS "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    goto :goto_1

    :cond_3
    const-string v2, "count(*)"

    .line 220
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "artist"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ifnull("

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", virtual_artist) AS "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    const/4 v2, 0x0

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_6
    move v12, v6

    goto :goto_2

    :cond_7
    const/4 v12, 0x0

    .line 234
    :goto_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-nez v12, :cond_c

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id IN ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    new-instance v4, Lcom/samsung/android/app/music/provider/PlaylistProvider$queryMultipleMembers$2;

    invoke-direct {v4, v0, v8}, Lcom/samsung/android/app/music/provider/PlaylistProvider$queryMultipleMembers$2;-><init>(Lcom/samsung/android/app/music/provider/PlaylistProvider;Ljava/util/HashMap;)V

    .line 2146
    array-length v5, v11

    move-object v6, v3

    move-object v3, v2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_b

    aget-object v7, v11, v2

    if-nez v7, :cond_8

    move/from16 v18, v5

    goto :goto_4

    :cond_8
    move/from16 v18, v5

    const-string v5, "?,"

    .line 269
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/lit16 v5, v5, 0x3e7

    if-nez v5, :cond_a

    .line 272
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "subSelection.toString()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/app/music/provider/PlaylistProvider$queryMultipleMembers$2;->invoke(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    return-object v3

    .line 278
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_id IN ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v3

    move-object v3, v5

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v18

    goto :goto_3

    .line 282
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_c

    .line 283
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "subSelection.toString()"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/app/music/provider/PlaylistProvider$queryMultipleMembers$2;->invoke(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v3, 0x0

    return-object v3

    :cond_c
    const/4 v3, 0x0

    .line 296
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_5

    :cond_d
    move-object/from16 v23, v3

    .line 297
    :goto_5
    new-instance v7, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;

    iget-object v2, v0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v22, 0x0

    const/16 v24, 0x8

    const/16 v25, 0x0

    move-object/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, p1

    invoke-direct/range {v18 .. v25}, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v2, "SELECT "

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_e

    const-string v1, "*"

    .line 301
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object v0, v9

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3f

    const/16 v20, 0x0

    move-object/from16 v1, p2

    move-object/from16 v26, v6

    move-object/from16 v6, v17

    move-object/from16 v27, v7

    move-object/from16 v7, v18

    move-object/from16 v28, v8

    move/from16 v8, v19

    move-object v0, v9

    move-object/from16 v9, v20

    .line 303
    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v26

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const/16 v1, 0x20

    if-nez v10, :cond_f

    const-string v3, ""

    goto :goto_7

    .line 308
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "._id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=? "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v12, :cond_10

    const-string v0, "ORDER BY"

    .line 315
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2148
    :cond_10
    array-length v0, v11

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_13

    aget-object v4, v11, v3

    if-nez v4, :cond_11

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    const/4 v7, 0x1

    goto :goto_a

    .line 328
    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT * FROM ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_12

    const-string v6, ""

    move-object v7, v6

    move-object/from16 v6, v28

    goto :goto_9

    :cond_12
    move-object/from16 v6, v28

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_9
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 329
    new-array v8, v7, [Ljava/lang/String;

    aput-object v4, v8, v16

    move-object/from16 v4, v27

    .line 327
    invoke-virtual {v4, v5, v8}, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v27, v4

    move-object/from16 v28, v6

    goto :goto_8

    :cond_13
    move-object/from16 v4, v27

    .line 333
    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/MediaUnionRawQueryer;->a()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/provider/PlaylistProvider;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method private final a(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    const/4 v0, 0x0

    .line 383
    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    if-eqz p3, :cond_6

    const/16 v2, 0x64

    const-wide/16 v3, 0x0

    if-eq p2, v2, :cond_4

    const/16 v2, 0xc8

    if-eq p2, v2, :cond_3

    const/16 v2, 0x1f4

    if-eq p2, v2, :cond_2

    const/16 v2, 0x258

    if-eq p2, v2, :cond_1

    const/16 v0, 0x5dd

    if-ne p2, v0, :cond_0

    .line 416
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "recommended_playlist_map"

    const-string v2, "playlist_id"

    invoke-virtual {p2, v0, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    cmp-long v0, p2, v3

    if-lez v0, :cond_5

    .line 418
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 422
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insert not implemented. uri="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 424
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 410
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "playlist_server_response_info"

    invoke-virtual {p2, v2, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    cmp-long v0, p2, v3

    if-lez v0, :cond_5

    .line 412
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 404
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "audio_playlists_conflict"

    const-string v2, "local_playlist_id"

    invoke-virtual {p2, v0, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    cmp-long v0, p2, v3

    if-lez v0, :cond_5

    .line 406
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 396
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p1, p3}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v5

    cmp-long p3, v5, v3

    if-lez p3, :cond_5

    .line 398
    invoke-static {p1, v5, v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 399
    iget-object p3, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I)V

    goto :goto_0

    .line 388
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide p2

    cmp-long v0, p2, v3

    if-lez v0, :cond_5

    .line 389
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :cond_5
    :goto_0
    return-object v1

    :cond_6
    return-object v1
.end method

.method private final a(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    .line 1928
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    if-eqz v0, :cond_1

    const-string v0, "name_pinyin"

    .line 1929
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "name_pinyin"

    .line 1931
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/PinyinUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1929
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_1
    :goto_0
    return-void
.end method

.method private final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 7

    const-string v0, "PlaylistProvider"

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rearrangePlayOrderInPlaylist : arg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 742
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const-string v3, "SELECT * FROM  (SELECT count(*) AS count_of_tracks    FROM audio_playlists_map WHERE playlist_id = ? GROUP BY play_order) WHERE count_of_tracks > 1"

    .line 2240
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 748
    :try_start_0
    invoke-virtual {p2, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v6, v3

    check-cast v6, Landroid/database/Cursor;

    if-eqz v6, :cond_1

    .line 749
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    :try_start_2
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 751
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 752
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 753
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    const-string v2, "java.lang.Long.valueOf(arg)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object p3

    .line 752
    invoke-virtual {p1, p3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 749
    :cond_1
    :goto_0
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 756
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2246
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2249
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-string p3, "PlaylistProvider"

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rearrangePlayOrderInPlaylist takes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v5, p1

    .line 748
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 2249
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3

    .line 1059
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE audio_playlists_map SET audio_cp_attrs=(SELECT cp_attrs FROM audio_meta WHERE audio_id=audio_meta._id), audio_source_id=(SELECT CASE WHEN cp_attrs=524290 THEN source_id ELSE local_track_id END FROM audio_meta WHERE audio_id=audio_meta._id), storage_order=(SELECT CASE WHEN cp_attrs&15=1 THEN 100 WHEN cp_attrs&15=2 THEN 200 WHEN cp_attrs&15=8 THEN 300 END FROM audio_meta WHERE audio_id=audio_meta._id), audio_file_name=(SELECT _display_name FROM audio_meta WHERE audio_id=audio_meta._id) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WHERE playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND (audio_data IS NULL OR storage_order=0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "audio_source_id"

    .line 1080
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE audio_playlists_map SET audio_cp_attrs=(SELECT CASE WHEN audio_cp_attrs=524289 THEN 65537 ELSE audio_cp_attrs END), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "audio_data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "WHERE playlist_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " AND (audio_data IS NULL OR storage_order=0)"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1083
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE audio_playlists_map SET audio_data=(SELECT _data FROM audio_meta WHERE audio_id=audio_meta._id) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WHERE playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " AND (audio_data IS NULL)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1093
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cp_attrs&2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AND source_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x29

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "audio_meta"

    const-string p3, "_id"

    const-string v0, "source_id"

    .line 1769
    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "source_id"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 1767
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    check-cast p3, Ljava/io/Closeable;

    const/4 v0, 0x0

    .line 1775
    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p3

    check-cast v1, Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 1776
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "_id"

    .line 1778
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "source_id"

    .line 1779
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2428
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1781
    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1782
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1783
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "audio_id"

    .line 1784
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2431
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1787
    :cond_3
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1775
    invoke-static {p3, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 2437
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1789
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1790
    check-cast p2, Ljava/util/Map;

    .line 2443
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 1791
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "audio_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const v1, 0x80002

    if-nez v0, :cond_4

    .line 1793
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    .line 1795
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1793
    invoke-interface {v0, p1, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 1798
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "audio_id"

    const-string v4, "_id"

    .line 1800
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 1798
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "album_id"

    .line 1803
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1805
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    .line 1807
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/ContentValues;

    const-string v3, "albumId"

    .line 1808
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const v7, 0x80002

    move-object v3, p1

    .line 1804
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    .line 1812
    :cond_4
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ContentValues;

    const-string v0, "audio_cp_attrs"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1820
    :cond_5
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2445
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2448
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 1775
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    invoke-static {p3, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v0, p2

    move-object/from16 v14, p3

    move-object/from16 v8, p5

    .line 1635
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v16, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_4

    const-string v3, "audio_meta"

    const-string v1, "_id"

    const-string v2, "_display_name"

    .line 1639
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "cp_attrs&1 AND _display_name IN "

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p4

    .line 1636
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .line 1643
    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 1644
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "_id"

    .line 1652
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "_display_name"

    .line 1653
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 2398
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 1655
    :cond_1
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1656
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1657
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    check-cast v6, Landroid/content/ContentValues;

    const-string v11, "audio_id"

    .line 1658
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2401
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v3, "PlaylistProvider"

    const-string v4, "setAudioIdForLocalContents : display_name\'s cursor empty"

    .line 1645
    invoke-static {v13, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1661
    :goto_1
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1643
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1665
    :cond_4
    :goto_3
    move-object v1, v8

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_a

    .line 1667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cp_attrs&1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AND local_track_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v9, "audio_meta"

    const-string v1, "_id"

    const-string v2, "local_track_id"

    const-string v3, "_display_name"

    .line 1671
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v8, p1

    const/4 v4, 0x1

    move-object v13, v1

    move-object v1, v14

    move-object v14, v2

    move-object v2, v15

    move-object v15, v3

    .line 1669
    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    .line 1681
    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/Throwable;

    :try_start_2
    move-object v6, v3

    check-cast v6, Landroid/database/Cursor;

    if-eqz v6, :cond_9

    .line 1682
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_6

    goto :goto_5

    :cond_6
    const-string v4, "_id"

    .line 1690
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v8, "local_track_id"

    .line 1691
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "_display_name"

    .line 1692
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 2404
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_6

    .line 1694
    :cond_7
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1695
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1696
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1697
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    check-cast v12, Landroid/content/ContentValues;

    const-string v14, "audio_id"

    .line 1698
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v12, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "audio_file_name"

    .line 1699
    invoke-virtual {v12, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_6

    :cond_9
    :goto_5
    const-string v6, "PlaylistProvider"

    const-string v8, "setAudioIdForLocalContents : local_track_id\'s cursor empty"

    .line 1683
    invoke-static {v4, v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1702
    :goto_6
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1681
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v5, v0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_7
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_a
    move-object v1, v14

    move-object v2, v15

    .line 2413
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1707
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1708
    check-cast v0, Ljava/util/Map;

    .line 2419
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const v4, 0x80008

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1709
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v6, "audio_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_b

    .line 1711
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v6, "_display_name"

    .line 1713
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    const-string v9, "audio_file_name"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1711
    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-object v5, v7, Lcom/samsung/android/app/music/provider/PlaylistProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    .line 1717
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1715
    invoke-interface {v5, v2, v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1720
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v8, "audio_id"

    invoke-virtual {v6, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1721
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v5, "audio_cp_attrs"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9

    .line 1723
    :cond_b
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "audio_cp_attrs"

    .line 1725
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v6, "cp_attrs"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1723
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9

    .line 1730
    :cond_c
    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    .line 2421
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1731
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v5, "audio_id"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_d

    .line 1733
    iget-object v3, v7, Lcom/samsung/android/app/music/provider/PlaylistProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    .line 1735
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 1733
    invoke-interface {v3, v2, v5, v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1738
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v6, "audio_id"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1739
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v3, "audio_cp_attrs"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a

    .line 1741
    :cond_d
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v5, "audio_cp_attrs"

    .line 1743
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v6, "cp_attrs"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1741
    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a

    .line 1754
    :cond_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2423
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2426
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_2
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 6

    .line 762
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "DROP TABLE IF EXISTS tempTable"

    .line 764
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE IF NOT EXISTS tempTable AS SELECT * FROM audio_playlists_map WHERE playlist_id=? ORDER BY play_order"

    .line 765
    invoke-virtual {p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "UPDATE audio_playlists_map SET play_order=(SELECT rowid FROM tempTable WHERE tempTable._id = audio_playlists_map._id) WHERE playlist_id=?"

    .line 770
    invoke-virtual {p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string p1, "PlaylistProvider"

    .line 777
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rearrangePlayOrderInPlaylistInternal id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget-object p2, p2, v5

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " takes "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    .line 778
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 776
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

    .line 783
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 786
    array-length v2, p2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int v3, v0, v2

    .line 787
    new-array v3, v3, [Ljava/lang/String;

    .line 789
    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->b(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 2250
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

    .line 789
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v5

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 790
    invoke-static {p2, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v3
.end method

.method private final b(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 967
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v2

    .line 971
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 972
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2284
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 973
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->h(Landroid/net/Uri;)Z

    move-result v5

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v5, :cond_0

    const-string v5, "audio_playlists_map"

    .line 976
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playlist_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 974
    invoke-virtual {v4, v5, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 981
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->i(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 983
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UPDATE audio_playlists_map "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "SET play_order=play_order+"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    array-length v10, v0

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, "WHERE playlist_id="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 982
    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 990
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT ifnull(max(play_order), -1) FROM audio_playlists_map "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "WHERE playlist_id="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 989
    invoke-virtual {v4, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;

    .line 993
    move-object v10, v9

    check-cast v10, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v11, v5

    check-cast v11, Landroid/database/Cursor;

    if-eqz v11, :cond_2

    .line 994
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 995
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 997
    :cond_2
    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 993
    :try_start_2
    invoke-static {v5, v10}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1001
    :goto_0
    array-length v5, v0

    const/4 v10, 0x1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    const-string v0, "PlaylistProvider"

    const-string v2, "bulkInsertPlaylistMembers : values is empty so rollback changes."

    .line 1002
    invoke-static {v10, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2295
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v8

    .line 1010
    :cond_4
    :try_start_3
    aget-object v5, v0, v8

    const-string v11, "server_track_seq_id"

    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const-string v11, "audio_id"

    const-string v12, "playlist_id"

    const-string v13, "play_order"

    .line 1011
    filled-new-array {v11, v12, v13}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v5, :cond_5

    const-string v11, "server_track_seq_id"

    .line 1017
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    :cond_5
    new-instance v11, Lcom/samsung/android/app/music/provider/MediaUnionInserter;

    iget-object v13, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "audio_playlists_map"

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v18}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2290
    array-length v12, v0

    move-wide v13, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v12, :cond_9

    aget-object v7, v0, v6

    const-string v15, "audio_id"

    .line 1023
    invoke-virtual {v7, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    const-string v9, "play_order"

    .line 1024
    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    const-wide/16 v16, 0x1

    add-long v13, v13, v16

    move-wide/from16 v16, v13

    goto :goto_3

    .line 1026
    :cond_6
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    move-wide/from16 v21, v13

    move-wide/from16 v13, v16

    move-wide/from16 v16, v21

    :goto_3
    const/4 v9, 0x3

    .line 1028
    new-array v9, v9, [Ljava/lang/String;

    .line 1029
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v9, v8

    .line 1030
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v9, v10

    .line 1031
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v9, v14

    .line 1028
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v5, :cond_8

    if-eqz v5, :cond_7

    const-string v13, "server_track_seq_id"

    .line 1035
    invoke-virtual {v7, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    .line 1036
    :goto_4
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v7, 0x0

    .line 1038
    invoke-static {v11, v9, v7, v14, v7}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a(Lcom/samsung/android/app/music/provider/MediaUnionInserter;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    move-object v9, v7

    move-wide/from16 v13, v16

    goto :goto_2

    .line 1040
    :cond_9
    invoke-virtual {v11}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a()I

    move-result v0

    .line 1042
    iget-object v5, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v5, v2, v3}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1044
    sget-object v5, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;

    iget-object v6, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    iget-object v7, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v6, v7, v2, v3}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1045
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2292
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2295
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1054
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v4, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_a
    return v0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 993
    :try_start_4
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    :try_start_5
    invoke-static {v5, v10}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 2295
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 8

    .line 2270
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 923
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v0

    .line 924
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 926
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_0

    .line 2279
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v3

    .line 930
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->i(Landroid/net/Uri;)Z

    move-result p2

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    .line 932
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE audio_playlists_map SET play_order=play_order+1 "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "WHERE playlist_id="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 931
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 936
    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_0

    .line 939
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT ifnull(max(play_order), -1) FROM audio_playlists_map "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WHERE playlist_id="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 938
    invoke-virtual {p1, p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;

    .line 941
    move-object v3, v5

    check-cast v3, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object v4, p2

    check-cast v4, Landroid/database/Cursor;

    if-eqz v4, :cond_2

    .line 942
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    .line 943
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 945
    :cond_2
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 941
    :try_start_3
    invoke-static {p2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_0
    const-string p2, "playlist_id"

    .line 947
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "play_order"

    .line 948
    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "audio_playlists_map"

    .line 950
    invoke-virtual {p1, p2, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_3

    .line 956
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 957
    sget-object v2, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2276
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2279
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide p2

    :catchall_0
    move-exception p3

    goto :goto_1

    :catch_0
    move-exception p3

    move-object v3, p3

    .line 941
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    invoke-static {p2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    .line 2279
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 9

    .line 1349
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/provider/PlaylistProvider;

    const-string v2, "sync_playlist_list"

    const-string v0, "sync_down_action"

    .line 1352
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "playlist_id=?"

    const/4 v0, 0x1

    .line 1354
    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v5, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 1350
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2352
    move-object p2, p1

    check-cast p2, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p2

    check-cast v2, Landroid/database/Cursor;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2363
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "2_playlist_members"

    const-string v3, "sync_down_action"

    .line 2366
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 1358
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 p3, 0x1

    goto :goto_1

    .line 2367
    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2369
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2352
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_1
    return p3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final c(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1106
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1108
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2296
    array-length v6, v0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_0

    aget-object v9, v0, v8

    const-string v10, "audio_source_id"

    .line 1114
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "title"

    .line 1115
    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "artist"

    .line 1116
    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "source_artist_id"

    .line 1117
    invoke-virtual {v9, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "album"

    .line 1118
    invoke-virtual {v9, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "album_id"

    .line 1119
    invoke-virtual {v9, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "image_url"

    .line 1120
    invoke-virtual {v9, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "explicit"

    .line 1121
    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    move/from16 v16, v6

    const-string v6, "is_celeb"

    .line 1122
    invoke-virtual {v9, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .line 1124
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    move-wide/from16 v17, v2

    const-string v2, "source_id"

    .line 1126
    invoke-virtual {v9, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    .line 1127
    invoke-virtual {v9, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "duration"

    const/4 v3, 0x0

    .line 1130
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "album"

    .line 1131
    invoke-virtual {v9, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "album_id"

    .line 1132
    invoke-virtual {v9, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "album_artist"

    .line 1133
    invoke-virtual {v9, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "artist"

    .line 1134
    invoke-virtual {v9, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "artist_id"

    .line 1135
    invoke-virtual {v9, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "image_url"

    .line 1136
    invoke-virtual {v9, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "explicit"

    .line 1138
    invoke-virtual {v9, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "is_celeb"

    .line 1139
    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1143
    move-object v0, v4

    check-cast v0, Ljava/util/Map;

    const-string v2, "sourceId"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\'"

    .line 1144
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v16

    move-wide/from16 v2, v17

    move-object/from16 v0, p2

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v17, v2

    .line 1146
    move-object v0, v5

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v7, 0x1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1151
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cp_attrs&2 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AND source_id IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1153
    iget-object v8, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "audio_meta"

    const-string v0, "_id"

    const-string v2, "source_id"

    .line 1155
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const-string v13, "source_id"

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1153
    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    const/4 v0, 0x0

    .line 1163
    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v2

    check-cast v5, Landroid/database/Cursor;

    if-eqz v5, :cond_6

    .line 1164
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const-string v6, "_id"

    .line 1166
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v8, "source_id"

    .line 1167
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2299
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    .line 1169
    :cond_4
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1170
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1171
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    check-cast v11, Landroid/content/ContentValues;

    const-string v12, "audio_id"

    .line 1172
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2302
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1175
    :cond_6
    :goto_2
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1163
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1177
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2308
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1178
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1179
    move-object v3, v4

    check-cast v3, Ljava/util/Map;

    .line 2314
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1180
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v8, "audio_id"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-nez v6, :cond_7

    .line 1182
    iget-object v6, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    .line 1183
    iget-object v8, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 1184
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    const v10, 0x80002

    .line 1182
    invoke-interface {v6, v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Landroid/content/ContentValues;

    move-result-object v6

    .line 1187
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    const-string v9, "audio_id"

    const-string v10, "_id"

    .line 1189
    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 1187
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "album_id"

    .line 1192
    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 1194
    iget-object v8, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    .line 1195
    iget-object v9, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 1196
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/content/ContentValues;

    const-string v5, "albumId"

    .line 1197
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const v13, 0x80002

    .line 1193
    invoke-static/range {v8 .. v13}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    goto :goto_3

    .line 1208
    :cond_8
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2316
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2319
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1220
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2324
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1221
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->h(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "recommended_playlist_map"

    .line 1224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playlist_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v17

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1222
    invoke-virtual {v2, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    move-wide/from16 v8, v17

    .line 1229
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v3, "playlist_id"

    const-string v5, "audio_id"

    .line 1231
    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1237
    new-instance v5, Lcom/samsung/android/app/music/provider/MediaUnionInserter;

    .line 1238
    iget-object v6, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "recommended_playlist_map"

    const/16 v11, 0x1f3

    .line 1237
    invoke-direct {v5, v6, v10, v3, v11}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 1244
    check-cast v4, Ljava/util/Map;

    .line 2330
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1245
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v10, "audio_id"

    .line 1246
    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x2

    .line 1247
    new-array v10, v10, [Ljava/lang/String;

    .line 1248
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    aput-object v6, v10, v7

    .line 1247
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1251
    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1255
    :cond_a
    invoke-virtual {v5}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a()I

    .line 1263
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2332
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2335
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1272
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1273
    iget-object v0, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "MediaContents.Playlists.\u2026getContentUri(playlistId)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_b
    return v4

    :catchall_0
    move-exception v0

    .line 2335
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_1
    move-exception v0

    .line 2319
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1163
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_6
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final d(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 39

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 1370
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v8

    .line 1376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1378
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1379
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1380
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1382
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1383
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1384
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2371
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    const/16 v16, 0x2

    const/16 v17, 0x1

    if-ge v4, v3, :cond_6

    aget-object v6, v0, v4

    const-string v14, "audio_source_id"

    .line 1386
    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "audio_cp_attrs"

    .line 1387
    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v19, v3

    const-string v3, "title"

    .line 1388
    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "album"

    .line 1389
    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v20, v8

    const-string v8, "artist"

    .line 1390
    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "explicit"

    .line 1391
    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    const-string v7, "is_celeb"

    .line 1392
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    move/from16 v22, v4

    const-string v4, "audio_file_name"

    .line 1393
    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v13

    const-string v13, "cpAttrs"

    .line 1395
    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result v13

    move-object/from16 v24, v12

    const/16 v12, 0x27

    if-eqz v13, :cond_4

    .line 1396
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "source_id"

    .line 1397
    invoke-virtual {v6, v7, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "title"

    .line 1398
    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "artist"

    .line 1399
    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "album"

    .line 1400
    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "drm_type"

    .line 1403
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v7, 0x80001

    if-ne v3, v7, :cond_0

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    :goto_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1401
    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cp_attrs"

    .line 1405
    invoke-virtual {v6, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "audio_file_name"

    .line 1406
    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    move-object v0, v4

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/16 v17, 0x0

    :cond_2
    :goto_2
    if-eqz v17, :cond_3

    .line 1410
    move-object v0, v11

    check-cast v0, Ljava/util/Map;

    const-string v3, "sourceId"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object/from16 v7, v23

    goto/16 :goto_4

    .line 1413
    :cond_3
    move-object v0, v10

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1417
    :cond_4
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "source_id"

    .line 1419
    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "title"

    .line 1420
    invoke-virtual {v4, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "explicit"

    .line 1421
    invoke-virtual {v4, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v7, :cond_5

    const-string v3, "is_celeb"

    .line 1422
    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_5
    const-string v3, "duration"

    const/4 v7, 0x0

    .line 1425
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "album"

    .line 1426
    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "album_id"

    const-string v3, "source_album_id"

    .line 1427
    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "album_artist"

    .line 1428
    invoke-virtual {v4, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "artist"

    .line 1429
    invoke-virtual {v4, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "artist_id"

    const-string v3, "source_artist_id"

    .line 1430
    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image_url"

    const-string v3, "image_url"

    .line 1432
    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image_url_big"

    const-string v3, "image_url_big"

    .line 1433
    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1436
    move-object/from16 v0, v24

    check-cast v0, Ljava/util/Map;

    const-string v3, "sourceId"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v4, v22, 0x1

    move-object v13, v7

    move/from16 v3, v19

    move-wide/from16 v8, v20

    move-object/from16 v12, v24

    move-object/from16 v0, p2

    move-object/from16 v7, p0

    goto/16 :goto_0

    :cond_6
    move-wide/from16 v20, v8

    move-object/from16 v24, v12

    move-object v7, v13

    .line 1440
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1441
    :cond_8
    move-object v13, v7

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_a

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_a
    move-object/from16 v8, p0

    .line 1451
    iget-object v0, v8, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 1455
    move-object/from16 v25, v2

    check-cast v25, Ljava/lang/Iterable;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x3f

    const/16 v33, 0x0

    invoke-static/range {v25 .. v33}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v10

    move-object v4, v11

    .line 1450
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1464
    iget-object v0, v8, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onlineSourceIdsSb.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v24

    invoke-direct {v8, v0, v2, v1}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1474
    iget-object v1, v8, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2377
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1475
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->h(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "audio_playlists_map"

    .line 1478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlist_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v20

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    .line 1476
    invoke-virtual {v1, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    move-wide/from16 v4, v20

    .line 1483
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v19, "playlist_id"

    const-string v20, "audio_id"

    const-string v21, "play_order"

    const-string v22, "audio_cp_attrs"

    const-string v23, "server_track_seq_id"

    const-string v24, "audio_data"

    const-string v25, "audio_source_id"

    const-string v26, "audio_file_name"

    const-string v27, "storage_order"

    .line 1485
    filled-new-array/range {v19 .. v27}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1498
    new-instance v3, Lcom/samsung/android/app/music/provider/MediaUnionInserter;

    iget-object v6, v8, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "audio_playlists_map"

    const/16 v9, 0x14a

    invoke-direct {v3, v6, v7, v0, v9}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;I)V

    move-object/from16 v0, p2

    .line 2383
    array-length v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_8
    if-ge v7, v6, :cond_19

    aget-object v12, v0, v7

    const-string v13, "audio_source_id"

    .line 1501
    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "audio_file_name"

    .line 1502
    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "audio_cp_attrs"

    .line 1503
    invoke-virtual {v12, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    const-string v0, "serverCpAttrs"

    .line 1504
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1505
    move-object v0, v14

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v0, 0x1

    :goto_a
    if-eqz v0, :cond_e

    .line 1506
    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    goto :goto_b

    .line 1508
    :cond_e
    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    goto :goto_b

    .line 1511
    :cond_f
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    :goto_b
    if-nez v0, :cond_10

    .line 1513
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_10
    const-string v14, "audio_cp_attrs"

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "audio_id"

    .line 1514
    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v34, v2

    const-string v2, "server_track_seq_id"

    .line 1515
    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v35, v6

    const-string v6, "play_order"

    .line 1516
    invoke-virtual {v12, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1517
    invoke-static {v13}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v36, v10

    if-nez v14, :cond_11

    move-object/from16 v37, v11

    goto :goto_c

    .line 1519
    :cond_11
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v37, v11

    const v11, 0x80008

    if-ne v10, v11, :cond_12

    const/16 v10, 0x12c

    const v11, 0x80002

    goto :goto_e

    :cond_12
    :goto_c
    if-nez v14, :cond_13

    const v11, 0x80002

    goto :goto_d

    .line 1520
    :cond_13
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const v11, 0x80002

    if-ne v10, v11, :cond_14

    const/16 v10, 0xc8

    goto :goto_e

    :cond_14
    :goto_d
    const/16 v10, 0x64

    :goto_e
    if-nez v14, :cond_15

    move-object/from16 v38, v1

    goto :goto_f

    :cond_15
    move-object/from16 v38, v1

    .line 1524
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v11, :cond_16

    const-string v0, ""

    goto :goto_10

    :cond_16
    :goto_f
    const-string v1, "audio_file_name"

    .line 1525
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    const/16 v1, 0x9

    .line 1528
    new-array v1, v1, [Ljava/lang/String;

    .line 1529
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/16 v18, 0x0

    aput-object v11, v1, v18

    .line 1530
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v17

    .line 1531
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v16

    if-nez v14, :cond_17

    const v11, 0x80001

    goto :goto_11

    .line 1532
    :cond_17
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const v11, 0x80001

    if-ne v6, v11, :cond_18

    const v6, 0x10001

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_12

    :cond_18
    :goto_11
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :goto_12
    const/4 v14, 0x3

    aput-object v6, v1, v14

    const/4 v6, 0x4

    .line 1533
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x5

    const-string v6, "?"

    aput-object v6, v1, v2

    const/4 v2, 0x6

    const-string v6, "?"

    aput-object v6, v1, v2

    const/4 v2, 0x7

    const-string v6, "?"

    aput-object v6, v1, v2

    const/16 v2, 0x8

    .line 1537
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 1528
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1539
    new-array v2, v14, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v12, v2, v6

    aput-object v13, v2, v17

    aput-object v0, v2, v16

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1544
    invoke-virtual {v3, v1, v0}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v34

    move/from16 v6, v35

    move-object/from16 v10, v36

    move-object/from16 v11, v37

    move-object/from16 v1, v38

    move-object/from16 v0, p2

    goto/16 :goto_8

    :cond_19
    move-object/from16 v38, v1

    .line 1547
    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/MediaUnionInserter;->a()I

    .line 1549
    sget-object v0, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;

    iget-object v1, v8, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    iget-object v2, v8, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1557
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2385
    invoke-virtual/range {v38 .. v38}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2388
    invoke-virtual/range {v38 .. v38}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1566
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1567
    iget-object v0, v8, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "MediaContents.Playlists.\u2026getContentUri(playlistId)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1a
    return v9

    :catchall_0
    move-exception v0

    goto :goto_13

    :catchall_1
    move-exception v0

    move-object/from16 v38, v1

    .line 2388
    :goto_13
    invoke-virtual/range {v38 .. v38}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PlaylistProvider"

    .line 596
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

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 600
    sget-object v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/16 v1, 0x29

    sparse-switch v4, :sswitch_data_0

    .line 702
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "update not implemented. uri="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 704
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 694
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "recommended_playlist_map"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_3

    .line 686
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "audio_playlists_conflict_history"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_3

    .line 678
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "audio_playlists_conflict"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_3

    .line 614
    :sswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2212
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "move"

    .line 615
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, "play_order"

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_from"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 625
    iget-object v5, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JII)I

    move-result v0

    goto :goto_0

    .line 620
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 621
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Need to specify "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " when using \'move\' parameter"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 620
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    :goto_0
    if-lez v0, :cond_2

    .line 629
    sget-object v2, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;

    .line 630
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    .line 631
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 629
    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 638
    :cond_2
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2218
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2221
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move p2, v0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    .line 641
    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2226
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v2, "move"

    .line 642
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v1, "play_order"

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_from"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 652
    iget-object v5, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JII)I

    move-result v1

    goto :goto_1

    .line 647
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 648
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Need to specify "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " when using \'move\' parameter"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 647
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 655
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlist_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "audio_playlists_map"

    .line 660
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 659
    invoke-virtual {v1, v3, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :goto_1
    if-lez v1, :cond_6

    .line 666
    sget-object v2, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;

    .line 667
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    .line 668
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 666
    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 675
    :cond_6
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2232
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2235
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move p2, v1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    .line 607
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_7

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v6, p3

    goto :goto_2

    :cond_7
    move-object v6, v0

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p4

    .line 611
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_3

    :sswitch_6
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 603
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 709
    :goto_3
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_8
    return p2

    :cond_9
    return v0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_6
        0x65 -> :sswitch_5
        0xc8 -> :sswitch_4
        0xcd -> :sswitch_3
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_1
        0x5dd -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v2, "uri"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "PlaylistProvider"

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete() uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", selection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", selectionArgs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-object v2, Lcom/samsung/android/app/music/provider/PlaylistProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const/16 v2, 0x29

    sparse-switch v8, :sswitch_data_0

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete not implemented. uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 574
    :sswitch_0
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "recommended_playlist_map"

    invoke-virtual {v2, v3, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 579
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 565
    :sswitch_1
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "playlist_server_response_info"

    invoke-virtual {v2, v3, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 570
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 556
    :sswitch_2
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "audio_playlists_conflict_history"

    invoke-virtual {v2, v3, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 561
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 552
    :sswitch_3
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "audio_playlists_conflict"

    invoke-virtual {v2, v3, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 553
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 543
    :sswitch_4
    iget-object v0, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sync_playlist_list"

    invoke-virtual {v0, v2, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    .line 508
    :sswitch_5
    iget-object v11, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2198
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 509
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlist_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_0

    .line 510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/16 v2, 0xcd

    if-ne v8, v2, :cond_1

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND audio_playlists_map._id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    :cond_1
    move-object v8, v3

    .line 515
    :goto_0
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    .line 516
    iget-object v3, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v5, 0xc8

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 514
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)V

    const-string v2, "audio_playlists_map"

    .line 522
    invoke-virtual {v11, v2, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_2

    .line 529
    sget-object v2, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;

    .line 530
    iget-object v3, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    .line 531
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 535
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v13

    move-object/from16 v5, p1

    move-object v6, v8

    move-object/from16 v7, p3

    move-wide v8, v13

    .line 529
    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 539
    :cond_2
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2204
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2207
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 540
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v3, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_3
    move v2, v12

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    .line 2207
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 483
    :sswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_4

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_1

    :cond_4
    move-object v9, v3

    .line 486
    :goto_1
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    .line 487
    iget-object v3, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v5, 0x64

    move-object/from16 v4, p1

    move-object v6, v9

    move-object/from16 v7, p3

    .line 485
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)V

    .line 493
    iget-object v11, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2184
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 494
    :try_start_1
    sget-object v2, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper$Companion;

    .line 495
    iget-object v3, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    .line 496
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v6, 0x64

    move-object/from16 v5, p1

    move-object v7, v9

    move-object/from16 v8, p3

    .line 494
    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    const-string v2, "audio_playlists"

    .line 502
    invoke-virtual {v11, v2, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 503
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2190
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2193
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 504
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v4, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 2193
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 461
    :sswitch_7
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    .line 462
    iget-object v3, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v5, 0x64

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 460
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)V

    .line 468
    iget-object v11, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2170
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 469
    :try_start_2
    sget-object v2, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper$Companion;

    .line 470
    iget-object v3, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    .line 471
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v5, p1

    move v6, v8

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 469
    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    .line 477
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "recommended_playlist_map"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "audio_playlists"

    .line 478
    invoke-virtual {v11, v2, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 479
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2176
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2179
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 480
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v4, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_5
    :goto_2
    return v2

    :catchall_2
    move-exception v0

    .line 2179
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_7
        0x65 -> :sswitch_6
        0xc8 -> :sswitch_5
        0xcd -> :sswitch_5
        0x12d -> :sswitch_4
        0x1f4 -> :sswitch_3
        0x1f5 -> :sswitch_2
        0x258 -> :sswitch_1
        0x5dc -> :sswitch_0
        0x5dd -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PlaylistProvider"

    .line 355
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

    .line 356
    sget-object v0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x44c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5dd

    if-eq v0, v1, :cond_0

    .line 377
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/net/Uri;I[Landroid/content/ContentValues;)I

    move-result p1

    goto :goto_0

    .line 372
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    goto :goto_0

    .line 368
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->d(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    goto :goto_0

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 363
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    goto :goto_0

    .line 359
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p2

    .line 360
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I)V

    move p1, p2

    :goto_0
    return p1
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    const-string v0, "uri"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PlaylistProvider"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query() uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", projection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", selectionArgs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sortOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v10, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v10}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 70
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->e(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 71
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    .line 73
    sget-object v1, Lcom/samsung/android/app/music/provider/PlaylistProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v1, v3}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const v1, 0x171ba

    const/4 v8, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query not implemented. uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :sswitch_0
    const-string v2, "recommended_playlist_map"

    const-string v11, "audio"

    .line 162
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    if-eqz v4, :cond_2

    .line 2141
    array-length v12, v4

    const/4 v13, 0x0

    :goto_0
    if-ge v8, v12, :cond_2

    aget-object v14, v4, v8

    add-int/lit8 v16, v13, 0x1

    .line 164
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v7

    if-eq v7, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "_id"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 166
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "._id AS "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v13

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v16

    const v1, 0x171ba

    move-object/from16 v7, p5

    goto :goto_0

    .line 170
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".playlist_id="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " AND "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "._id="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".audio_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :sswitch_1
    const-string v1, "playlist_server_response_info"

    .line 157
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_2
    const-string v1, "audio_playlists_conflict_history"

    .line 154
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_3
    const-string v1, "audio_playlists_conflict"

    .line 152
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 138
    :sswitch_4
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->f(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 141
    iget-object v1, v9, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 140
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/database/sqlite/SQLiteDatabase;ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 139
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There is no cp_attrs parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :sswitch_5
    const-string v1, "sync_playlist_list"

    .line 134
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 131
    :sswitch_6
    invoke-direct/range {p0 .. p4}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_7
    const-string v1, "audio_playlists_map"

    const-string v7, "audio"

    .line 98
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    if-eqz v4, :cond_9

    .line 2138
    array-length v11, v4

    const/4 v12, 0x0

    :goto_2
    if-ge v8, v11, :cond_9

    aget-object v13, v4, v8

    add-int/lit8 v14, v12, 0x1

    move/from16 v19, v11

    .line 100
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v11

    move/from16 v20, v14

    const v14, -0x53fd20b9

    if-eq v11, v14, :cond_7

    const v14, 0x171ba

    if-eq v11, v14, :cond_6

    const v14, 0x5897e6f

    if-eq v11, v14, :cond_5

    const v14, 0x6942258

    if-eq v11, v14, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string v11, "title"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 110
    sget-boolean v11, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v11, :cond_8

    const-string v11, "CASE WHEN audio_cp_attrs=524296 THEN ifnull(audio_file_name, title) ELSE title END AS title"

    .line 111
    aput-object v11, v4, v12

    goto :goto_3

    :cond_5
    const-string v11, "album"

    .line 100
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 105
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ifnull("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", virtual_album) AS "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v12

    goto :goto_3

    :cond_6
    const-string v11, "_id"

    .line 100
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 102
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "._id AS "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v12

    goto :goto_3

    :cond_7
    const-string v11, "artist"

    .line 100
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 108
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ifnull("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", virtual_artist) AS "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v12

    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move/from16 v11, v19

    move/from16 v12, v20

    goto/16 :goto_2

    .line 117
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "._id=audio_id AND playlist_id=?"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v10, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 118
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v7, 0xcd

    if-ne v2, v7, :cond_a

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "._id=?"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x4

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v7, "uri.pathSegments[4]"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz v5, :cond_b

    .line 125
    move-object v2, v5

    check-cast v2, Ljava/lang/CharSequence;

    const-string v5, "\\b_id\\b"

    .line 126
    new-instance v7, Lkotlin/text/Regex;

    invoke-direct {v7, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "._id"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v7, v2, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    :goto_4
    move-object v13, v1

    goto :goto_8

    :sswitch_8
    const-string v1, "audio_playlists"

    .line 90
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v1, "_id=?"

    .line 91
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :sswitch_9
    const-string v1, "audio_playlists"

    .line 76
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->b(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "name <> \'now playing list 0123456789\' AND name <> \'FavoriteList#328795!432@1341\'"

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->c(Landroid/net/Uri;)Z

    move-result v2

    const/4 v7, 0x1

    if-nez v2, :cond_f

    .line 82
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_e

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v2, "modified_state!=2"

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_f
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_10

    goto :goto_6

    :cond_10
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_11

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :cond_11
    :goto_7
    move-object v13, v5

    .line 182
    :goto_8
    iget-object v11, v9, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 185
    invoke-direct {v9, v0, v6}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    move-object/from16 v12, p2

    move-object/from16 v17, p5

    .line 181
    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 190
    iget-object v1, v9, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_12
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_9
        0x65 -> :sswitch_8
        0xc8 -> :sswitch_7
        0xcd -> :sswitch_7
        0xce -> :sswitch_6
        0x12d -> :sswitch_5
        0x190 -> :sswitch_4
        0x191 -> :sswitch_4
        0x1f4 -> :sswitch_3
        0x1f5 -> :sswitch_2
        0x258 -> :sswitch_1
        0x5dd -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 344
    check-cast v0, Landroid/net/Uri;

    if-eqz p2, :cond_1

    .line 347
    sget-object v0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 348
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 350
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-object p2

    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string p3, "method"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const v0, -0x653fb296

    if-ne p3, v0, :cond_0

    const-string p3, "playlist_track_rearrange_play_order"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 720
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->b:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 723
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "call not implemented. method="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 725
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 2

    .line 714
    sget-object v0, Lcom/samsung/android/app/music/provider/PlaylistProvider;->e:Landroid/content/UriMatcher;

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

    .line 733
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x653fb296

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "playlist_track_rearrange_play_order"

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
