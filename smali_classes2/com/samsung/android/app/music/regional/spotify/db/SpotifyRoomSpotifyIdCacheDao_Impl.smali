.class public Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCacheDao;


# instance fields
.field private final a:Landroid/arch/persistence/room/RoomDatabase;

.field private final b:Landroid/arch/persistence/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    .line 20
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl;->b:Landroid/arch/persistence/room/EntityInsertionAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;
    .locals 8

    const-string v0, "SELECT * from spotify_id_cache WHERE title = ? AND artist = ? AND album = ?"

    const/4 v1, 0x3

    .line 68
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 71
    invoke-virtual {v0, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0, v2, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p3, :cond_1

    .line 77
    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v0, p1, p3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    :goto_1
    if-nez p2, :cond_2

    .line 83
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {v0, v1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    .line 87
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "id"

    .line 89
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    const-string p3, "title"

    .line 90
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    const-string v1, "album"

    .line 91
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "artist"

    .line 92
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "spotify_id"

    .line 93
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "last_updated_time_ms"

    .line 94
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 96
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 97
    new-instance v5, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;

    invoke-direct {v5}, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;-><init>()V

    .line 98
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->a:J

    .line 99
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v5, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->b:Ljava/lang/String;

    .line 100
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v5, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->c:Ljava/lang/String;

    .line 101
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v5, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->d:Ljava/lang/String;

    .line 102
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v5, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->e:Ljava/lang/String;

    .line 103
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    iput-wide p2, v5, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 109
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 110
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v5

    :catchall_0
    move-exception p2

    .line 109
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 110
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw p2
.end method

.method public a(Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl;->b:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method
