.class public Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __deletionAdapterOfStreamingCache:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfStreamingCache:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __preparedStmtOfDeleteAll:Landroid/arch/persistence/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteFile:Landroid/arch/persistence/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeletePath:Landroid/arch/persistence/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 32
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__insertionAdapterOfStreamingCache:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 68
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__deletionAdapterOfStreamingCache:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 79
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__preparedStmtOfDeleteAll:Landroid/arch/persistence/room/SharedSQLiteStatement;

    .line 86
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__preparedStmtOfDeletePath:Landroid/arch/persistence/room/SharedSQLiteStatement;

    .line 93
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$5;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__preparedStmtOfDeleteFile:Landroid/arch/persistence/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public varargs delete([Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;)I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__deletionAdapterOfStreamingCache:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public deleteAll()I
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__preparedStmtOfDeleteAll:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 131
    :try_start_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a()I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 136
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__preparedStmtOfDeleteAll:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return v1

    :catchall_0
    move-exception v1

    .line 135
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 136
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__preparedStmtOfDeleteAll:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public deleteFile(Ljava/lang/String;)I
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__preparedStmtOfDeleteFile:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 167
    :try_start_0
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 169
    :cond_0
    invoke-interface {v0, v1, p1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    .line 171
    :goto_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a()I

    move-result p1

    .line 172
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 176
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__preparedStmtOfDeleteFile:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return p1

    .line 175
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 176
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__preparedStmtOfDeleteFile:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public deletePath(Ljava/lang/String;)I
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__preparedStmtOfDeletePath:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 147
    :try_start_0
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 149
    :cond_0
    invoke-interface {v0, v1, p1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    .line 151
    :goto_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a()I

    move-result p1

    .line 152
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__preparedStmtOfDeletePath:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return p1

    .line 155
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__preparedStmtOfDeletePath:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public insert(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__insertionAdapterOfStreamingCache:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public query(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "SELECT * FROM streaming_cache WHERE streaming_id = ? AND is_full_stream = ? ORDER BY quality DESC"

    const/4 v3, 0x2

    .line 183
    invoke-static {v2, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {v2, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v2, v4, v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    :goto_0
    if-nez v1, :cond_1

    .line 192
    invoke-virtual {v2, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    :goto_1
    move-object/from16 v1, p0

    goto :goto_2

    .line 194
    :cond_1
    invoke-virtual {v2, v3, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 196
    :goto_2
    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 198
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "streaming_id"

    .line 199
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "path"

    .line 200
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "is_full_stream"

    .line 201
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "time_stamp"

    .line 202
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "downloaded_bytes"

    .line 203
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "total_bytes"

    .line 204
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "last_access_time"

    .line 205
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "quality"

    .line 206
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "encrypt_type"

    .line 207
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 208
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 211
    new-instance v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;

    invoke-direct {v14}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v15, v2

    .line 212
    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->id:J

    .line 213
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->streamingId:Ljava/lang/String;

    .line 214
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->path:Ljava/lang/String;

    .line 215
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->isFullStream:Ljava/lang/String;

    .line 216
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->timeStamp:Ljava/lang/String;

    .line 217
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->downloadedBytes:J

    .line 218
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->totalBytes:J

    .line 219
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->lastAccessTime:J

    .line 220
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->quality:I

    .line 221
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->encryptType:I

    .line 222
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v15

    move-object/from16 v1, p0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    move-object v15, v2

    .line 226
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 227
    invoke-virtual {v15}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v13

    :catchall_1
    move-exception v0

    move-object v15, v2

    .line 226
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 227
    invoke-virtual {v15}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v0
.end method

.method public queryOnlyDownloadCompleted(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "SELECT * FROM streaming_cache WHERE streaming_id = ? AND is_full_stream = ? AND total_bytes = downloaded_bytes ORDER BY quality DESC"

    const/4 v3, 0x2

    .line 235
    invoke-static {v2, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {v2, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {v2, v4, v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    :goto_0
    if-nez v1, :cond_1

    .line 244
    invoke-virtual {v2, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    :goto_1
    move-object/from16 v1, p0

    goto :goto_2

    .line 246
    :cond_1
    invoke-virtual {v2, v3, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 248
    :goto_2
    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 250
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "streaming_id"

    .line 251
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "path"

    .line 252
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "is_full_stream"

    .line 253
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "time_stamp"

    .line 254
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "downloaded_bytes"

    .line 255
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "total_bytes"

    .line 256
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "last_access_time"

    .line 257
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "quality"

    .line 258
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "encrypt_type"

    .line 259
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 260
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 263
    new-instance v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;

    invoke-direct {v14}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v15, v2

    .line 264
    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->id:J

    .line 265
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->streamingId:Ljava/lang/String;

    .line 266
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->path:Ljava/lang/String;

    .line 267
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->isFullStream:Ljava/lang/String;

    .line 268
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->timeStamp:Ljava/lang/String;

    .line 269
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->downloadedBytes:J

    .line 270
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->totalBytes:J

    .line 271
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->lastAccessTime:J

    .line 272
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->quality:I

    .line 273
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->encryptType:I

    .line 274
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v15

    move-object/from16 v1, p0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    move-object v15, v2

    .line 278
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 279
    invoke-virtual {v15}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v13

    :catchall_1
    move-exception v0

    move-object v15, v2

    .line 278
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 279
    invoke-virtual {v15}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v0
.end method

.method public queryOnlyInPath(Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "SELECT * FROM streaming_cache WHERE path LIKE ? ORDER BY last_access_time"

    const/4 v2, 0x1

    .line 286
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    :goto_0
    move-object/from16 v2, p0

    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 293
    :goto_1
    iget-object v0, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 295
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "streaming_id"

    .line 296
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "path"

    .line 297
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "is_full_stream"

    .line 298
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "time_stamp"

    .line 299
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "downloaded_bytes"

    .line 300
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "total_bytes"

    .line 301
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "last_access_time"

    .line 302
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "quality"

    .line 303
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "encrypt_type"

    .line 304
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 305
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 308
    new-instance v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;

    invoke-direct {v14}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v15, v1

    .line 309
    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->id:J

    .line 310
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->streamingId:Ljava/lang/String;

    .line 311
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->path:Ljava/lang/String;

    .line 312
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->isFullStream:Ljava/lang/String;

    .line 313
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->timeStamp:Ljava/lang/String;

    .line 314
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->downloadedBytes:J

    .line 315
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->totalBytes:J

    .line 316
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->lastAccessTime:J

    .line 317
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->quality:I

    .line 318
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->encryptType:I

    .line 319
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v15

    move-object/from16 v2, p0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    move-object v15, v1

    .line 323
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 324
    invoke-virtual {v15}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v13

    :catchall_1
    move-exception v0

    move-object v15, v1

    .line 323
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 324
    invoke-virtual {v15}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v0
.end method
