.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __insertionAdapterOfPlaylistItem:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __preparedStmtOfClear:Landroid/arch/persistence/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 26
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__insertionAdapterOfPlaylistItem:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 42
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__preparedStmtOfClear:Landroid/arch/persistence/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public clear()I
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__preparedStmtOfClear:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 80
    :try_start_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a()I

    move-result v1

    .line 81
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 85
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__preparedStmtOfClear:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return v1

    :catchall_0
    move-exception v1

    .line 84
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 85
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__preparedStmtOfClear:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public getAllItems()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT *FROM playlist ORDER BY id ASC "

    const/4 v1, 0x0

    .line 92
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "id"

    .line 95
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "playlist_id"

    .line 96
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;-><init>()V

    .line 102
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 103
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->setId(J)V

    .line 105
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 106
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->setPlaylistId(Ljava/lang/String;)V

    .line 107
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 112
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v4

    :catchall_0
    move-exception v2

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 112
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v2
.end method

.method public getPlaylist(J)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;
    .locals 5

    const-string v0, "SELECT * FROM playlist WHERE id=?"

    const/4 v1, 0x1

    .line 119
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v1, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(IJ)V

    .line 122
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "id"

    .line 124
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    const-string v1, "playlist_id"

    .line 125
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 127
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;-><init>()V

    .line 130
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 131
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->setId(J)V

    .line 133
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 134
    invoke-virtual {v2, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->setPlaylistId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 140
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 141
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v2

    :catchall_0
    move-exception p2

    .line 140
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 141
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw p2
.end method

.method public getPlaylist(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;
    .locals 6

    const-string v0, "SELECT * FROM playlist WHERE playlist_id=?"

    const/4 v1, 0x1

    .line 148
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 151
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    .line 155
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "id"

    .line 157
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "playlist_id"

    .line 158
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 160
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;-><init>()V

    .line 163
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 164
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->setId(J)V

    .line 166
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->setPlaylistId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 173
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 174
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 173
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 174
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v1
.end method

.method public insert(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;)J
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__insertionAdapterOfPlaylistItem:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__insertionAdapterOfPlaylistItem:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method
