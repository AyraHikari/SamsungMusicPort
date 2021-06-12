.class public Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;
.super Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;
.source "SourceFile"


# instance fields
.field private volatile _streamingCacheDao:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 3

    .line 103
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->assertNotMainThread()V

    .line 104
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->a()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 106
    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->beginTransaction()V

    const-string v1, "DELETE FROM `streaming_cache`"

    .line 107
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    .line 108
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->endTransaction()V

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 111
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 112
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->d()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VACUUM"

    .line 113
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 110
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->endTransaction()V

    const-string v2, "PRAGMA wal_checkpoint(FULL)"

    .line 111
    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 112
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->d()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VACUUM"

    .line 113
    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    :cond_1
    throw v1
.end method

.method protected createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
    .locals 2

    .line 98
    new-instance v0, Landroid/arch/persistence/room/InvalidationTracker;

    const-string v1, "streaming_cache"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/arch/persistence/room/InvalidationTracker;-><init>(Landroid/arch/persistence/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 29
    new-instance v0, Landroid/arch/persistence/room/RoomOpenHelper;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;I)V

    const-string v2, "9be6c0e046eadad04fbabf49b9a50f3a"

    const-string v3, "3d1e8fb4f7fa7184db857ee2ce61b2b5"

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/arch/persistence/room/RoomOpenHelper;-><init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->a(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->c:Ljava/lang/String;

    .line 89
    invoke-virtual {v1, v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->a(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->a(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->a()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 92
    iget-object p1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->a:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;->a(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public streamingCacheDao()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->_streamingCacheDao:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->_streamingCacheDao:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;

    return-object v0

    .line 123
    :cond_0
    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->_streamingCacheDao:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->_streamingCacheDao:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->_streamingCacheDao:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
