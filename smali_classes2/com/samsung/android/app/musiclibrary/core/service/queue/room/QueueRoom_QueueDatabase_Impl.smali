.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;
.source "SourceFile"


# instance fields
.field private volatile _metaDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;

.field private volatile _playListDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;

.field private volatile _queueDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 3

    .line 139
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;->assertNotMainThread()V

    .line 140
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->a()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 142
    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;->beginTransaction()V

    const-string v1, "DELETE FROM `meta`"

    .line 143
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v1, "DELETE FROM `playlist`"

    .line 144
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v1, "DELETE FROM `QueueItem`"

    .line 145
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    .line 146
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;->endTransaction()V

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 149
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 150
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->d()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VACUUM"

    .line 151
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 148
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;->endTransaction()V

    const-string v2, "PRAGMA wal_checkpoint(FULL)"

    .line 149
    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 150
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->d()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VACUUM"

    .line 151
    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    :cond_1
    throw v1
.end method

.method protected createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
    .locals 4

    .line 134
    new-instance v0, Landroid/arch/persistence/room/InvalidationTracker;

    const-string v1, "meta"

    const-string v2, "playlist"

    const-string v3, "QueueItem"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/arch/persistence/room/InvalidationTracker;-><init>(Landroid/arch/persistence/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 33
    new-instance v0, Landroid/arch/persistence/room/RoomOpenHelper;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;I)V

    const-string v2, "49b5cdd2eb75765b1e493d8c1349b1d3"

    const-string v3, "3c7820906f448f2ba673c26fbf9d0272"

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/arch/persistence/room/RoomOpenHelper;-><init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->a(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->c:Ljava/lang/String;

    .line 125
    invoke-virtual {v1, v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->a(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->a(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->a()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 128
    iget-object p1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->a:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;->a(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public getMetaDao$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_metaDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_metaDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;

    return-object v0

    .line 161
    :cond_0
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_metaDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_MetaMetaDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_metaDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_metaDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPlayListDao$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_playListDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_playListDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;

    return-object v0

    .line 175
    :cond_0
    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_playListDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_playListDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_playListDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueueDao$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_queueDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_queueDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;

    return-object v0

    .line 189
    :cond_0
    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_queueDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;

    if-nez v0, :cond_1

    .line 191
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomQueueDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomQueueDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_queueDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_QueueDatabase_Impl;->_queueDao:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 194
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
