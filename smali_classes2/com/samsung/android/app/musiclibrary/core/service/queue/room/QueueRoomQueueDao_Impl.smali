.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomQueueDao_Impl;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;
.source "SourceFile"


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomQueueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    return-void
.end method


# virtual methods
.method public getAllItems()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT _id,audio_id,source_audio_id,addedIndex,playlist.playlist_id,virtual_state FROM meta AS meta, playlist AS playlist WHERE meta.playlist_id = playlist.id ORDER BY _id ASC "

    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomQueueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "_id"

    .line 28
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "audio_id"

    .line 29
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "source_audio_id"

    .line 30
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "addedIndex"

    .line 31
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "playlist_id"

    .line 32
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "virtual_state"

    .line 33
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 34
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 37
    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;

    invoke-direct {v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;-><init>()V

    .line 39
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 40
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setId(I)V

    .line 42
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 43
    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setAudioId(J)V

    .line 45
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 46
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setSourceId(Ljava/lang/String;)V

    .line 48
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 49
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setAddedIndex(I)V

    .line 51
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 52
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setPlaylistId(Ljava/lang/String;)V

    .line 54
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 55
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setVirtualState(I)V

    .line 56
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 61
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v8

    :catchall_0
    move-exception v2

    .line 60
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 61
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v2
.end method

.method public getAvailableItems()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM (SELECT _id,audio_id,source_audio_id,addedIndex,playlist.playlist_id,virtual_state FROM meta AS meta, playlist AS playlist WHERE  meta.virtual_state=1 AND meta.playlist_id = playlist.id ORDER BY addedIndex ASC LIMIT 10000) ORDER BY _id ASC"

    const/4 v1, 0x0

    .line 68
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomQueueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "_id"

    .line 71
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "audio_id"

    .line 72
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "source_audio_id"

    .line 73
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "addedIndex"

    .line 74
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "playlist_id"

    .line 75
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "virtual_state"

    .line 76
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 77
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 80
    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;

    invoke-direct {v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;-><init>()V

    .line 82
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 83
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setId(I)V

    .line 85
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 86
    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setAudioId(J)V

    .line 88
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 89
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setSourceId(Ljava/lang/String;)V

    .line 91
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 92
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setAddedIndex(I)V

    .line 94
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 95
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setPlaylistId(Ljava/lang/String;)V

    .line 97
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 98
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setVirtualState(I)V

    .line 99
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 104
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v8

    :catchall_0
    move-exception v2

    .line 103
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 104
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v2
.end method

.method public getItems(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT _id,audio_id,source_audio_id,addedIndex,playlist.playlist_id,virtual_state FROM meta AS meta, playlist AS playlist WHERE meta.source_audio_id IN ("

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 156
    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/StringUtil;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ") AND meta.playlist_id = playlist.id ORDER BY _id ASC"

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x0

    .line 160
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 164
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    goto :goto_1

    .line 166
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomQueueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "_id"

    .line 172
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "audio_id"

    .line 173
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "source_audio_id"

    .line 174
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "addedIndex"

    .line 175
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "playlist_id"

    .line 176
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "virtual_state"

    .line 177
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 178
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 181
    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;

    invoke-direct {v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;-><init>()V

    .line 183
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 184
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setId(I)V

    .line 186
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 187
    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setAudioId(J)V

    .line 189
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 190
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setSourceId(Ljava/lang/String;)V

    .line 192
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 193
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setAddedIndex(I)V

    .line 195
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 196
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setPlaylistId(Ljava/lang/String;)V

    .line 198
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 199
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setVirtualState(I)V

    .line 200
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 204
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 205
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v7

    :catchall_0
    move-exception v1

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 205
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v1
.end method

.method public getVirtualItems()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT _id,audio_id,source_audio_id,addedIndex,playlist.playlist_id,virtual_state FROM meta AS meta, playlist AS playlist WHERE  meta.virtual_state!=1 AND meta.playlist_id = playlist.id ORDER BY _id ASC"

    const/4 v1, 0x0

    .line 111
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomQueueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "_id"

    .line 114
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "audio_id"

    .line 115
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "source_audio_id"

    .line 116
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "addedIndex"

    .line 117
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "playlist_id"

    .line 118
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "virtual_state"

    .line 119
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 120
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 123
    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;

    invoke-direct {v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;-><init>()V

    .line 125
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 126
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setId(I)V

    .line 128
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 129
    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setAudioId(J)V

    .line 131
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 132
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setSourceId(Ljava/lang/String;)V

    .line 134
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 135
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setAddedIndex(I)V

    .line 137
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 138
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setPlaylistId(Ljava/lang/String;)V

    .line 140
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 141
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->setVirtualState(I)V

    .line 142
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v8

    :catchall_0
    move-exception v2

    .line 146
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v2
.end method
