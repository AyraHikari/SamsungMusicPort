.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;
.source "SourceFile"


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __deletionAdapterOfMetaItem:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfMetaItem:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __preparedStmtOfClear:Landroid/arch/persistence/room/SharedSQLiteStatement;

.field private final __updateAdapterOfMetaItem:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 34
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__insertionAdapterOfMetaItem:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 54
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__deletionAdapterOfMetaItem:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 65
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__updateAdapterOfMetaItem:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 86
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__preparedStmtOfClear:Landroid/arch/persistence/room/SharedSQLiteStatement;

    return-void
.end method

.method private __entityCursorConverter_comSamsungAndroidAppMusiclibraryCoreServiceQueueRoomQueueRoomMetaMetaItem(Landroid/database/Cursor;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;
    .locals 8

    const-string v0, "_id"

    .line 361
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "audio_id"

    .line 362
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "source_audio_id"

    .line 363
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "addedIndex"

    .line 364
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "playlist_id"

    .line 365
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "virtual_state"

    .line 366
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 367
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;-><init>()V

    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    .line 370
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 371
    invoke-virtual {v6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setId(I)V

    :cond_0
    if-eq v1, v7, :cond_1

    .line 375
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 376
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAudioId(J)V

    :cond_1
    if-eq v2, v7, :cond_2

    .line 380
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-virtual {v6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setSourceId(Ljava/lang/String;)V

    :cond_2
    if-eq v3, v7, :cond_3

    .line 385
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 386
    invoke-virtual {v6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAddedIndex(I)V

    :cond_3
    if-eq v4, v7, :cond_4

    .line 390
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 391
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setPlaylistId(J)V

    :cond_4
    if-eq v5, v7, :cond_5

    .line 395
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 396
    invoke-virtual {v6, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setVirtualState(I)V

    :cond_5
    return-object v6
.end method


# virtual methods
.method public clear()I
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__preparedStmtOfClear:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 146
    :try_start_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a()I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 151
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__preparedStmtOfClear:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return v1

    :catchall_0
    move-exception v1

    .line 150
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 151
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__preparedStmtOfClear:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public getAllItems()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT *FROM meta ORDER BY _id ASC "

    const/4 v1, 0x0

    .line 158
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "_id"

    .line 161
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "audio_id"

    .line 162
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "source_audio_id"

    .line 163
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "addedIndex"

    .line 164
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "playlist_id"

    .line 165
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "virtual_state"

    .line 166
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 167
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 170
    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    invoke-direct {v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;-><init>()V

    .line 172
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 173
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setId(I)V

    .line 175
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 176
    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAudioId(J)V

    .line 178
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 179
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setSourceId(Ljava/lang/String;)V

    .line 181
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 182
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAddedIndex(I)V

    .line 184
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 185
    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setPlaylistId(J)V

    .line 187
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 188
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setVirtualState(I)V

    .line 189
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 194
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v8

    :catchall_0
    move-exception v2

    .line 193
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 194
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v2
.end method

.method public getAvailableItems()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM (SELECT * FROM meta WHERE virtual_state=1 ORDER BY addedIndex ASC LIMIT 10000) ORDER BY _id "

    const/4 v1, 0x0

    .line 201
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "_id"

    .line 204
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "audio_id"

    .line 205
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "source_audio_id"

    .line 206
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "addedIndex"

    .line 207
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "playlist_id"

    .line 208
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "virtual_state"

    .line 209
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 210
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 213
    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    invoke-direct {v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;-><init>()V

    .line 215
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 216
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setId(I)V

    .line 218
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 219
    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAudioId(J)V

    .line 221
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 222
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setSourceId(Ljava/lang/String;)V

    .line 224
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 225
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAddedIndex(I)V

    .line 227
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 228
    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setPlaylistId(J)V

    .line 230
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 231
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setVirtualState(I)V

    .line 232
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 237
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v8

    :catchall_0
    move-exception v2

    .line 236
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 237
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
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;"
        }
    .end annotation

    .line 286
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM meta WHERE source_audio_id IN ("

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 289
    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/StringUtil;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ") ORDER BY _id ASC "

    .line 290
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x0

    .line 293
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 295
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

    .line 297
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    goto :goto_1

    .line 299
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "_id"

    .line 305
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "audio_id"

    .line 306
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "source_audio_id"

    .line 307
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "addedIndex"

    .line 308
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "playlist_id"

    .line 309
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "virtual_state"

    .line 310
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 311
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 312
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 314
    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    invoke-direct {v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;-><init>()V

    .line 316
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 317
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setId(I)V

    .line 319
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 320
    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAudioId(J)V

    .line 322
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 323
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setSourceId(Ljava/lang/String;)V

    .line 325
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 326
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAddedIndex(I)V

    .line 328
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 329
    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setPlaylistId(J)V

    .line 331
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 332
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setVirtualState(I)V

    .line 333
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 337
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 338
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v7

    :catchall_0
    move-exception v1

    .line 337
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 338
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v1
.end method

.method public getVirtualItems()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM meta WHERE virtual_state!=1 ORDER BY _id ASC "

    const/4 v1, 0x0

    .line 244
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "_id"

    .line 247
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "audio_id"

    .line 248
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "source_audio_id"

    .line 249
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "addedIndex"

    .line 250
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "playlist_id"

    .line 251
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "virtual_state"

    .line 252
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 253
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 256
    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    invoke-direct {v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;-><init>()V

    .line 258
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 259
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setId(I)V

    .line 261
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 262
    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAudioId(J)V

    .line 264
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 265
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setSourceId(Ljava/lang/String;)V

    .line 267
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 268
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setAddedIndex(I)V

    .line 270
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 271
    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setPlaylistId(J)V

    .line 273
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 274
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->setVirtualState(I)V

    .line 275
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 280
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v8

    :catchall_0
    move-exception v2

    .line 279
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 280
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v2
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__insertionAdapterOfMetaItem:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public insertAfterClear(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 133
    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;->insertAfterClear(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public rawQuery(Landroid/arch/persistence/db/SupportSQLiteQuery;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    .line 347
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 348
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__entityCursorConverter_comSamsungAndroidAppMusiclibraryCoreServiceQueueRoomQueueRoomMetaMetaItem(Landroid/database/Cursor;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    move-result-object v1

    .line 351
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 355
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public removeItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__deletionAdapterOfMetaItem:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__updateAdapterOfMetaItem:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method
