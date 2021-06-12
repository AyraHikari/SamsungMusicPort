.class public Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;
.super Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;
.source "SourceFile"


# instance fields
.field private volatile a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;->internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDao;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;->a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDao;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;->a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDao;

    return-object v0

    .line 114
    :cond_0
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;->a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDao;

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;->a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDao;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;->a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 3

    .line 94
    invoke-super {p0}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;->assertNotMainThread()V

    .line 95
    invoke-super {p0}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->a()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 97
    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;->beginTransaction()V

    const-string v1, "DELETE FROM `history`"

    .line 98
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    .line 99
    invoke-super {p0}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-super {p0}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;->endTransaction()V

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 102
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->d()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VACUUM"

    .line 104
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 101
    invoke-super {p0}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;->endTransaction()V

    const-string v2, "PRAGMA wal_checkpoint(FULL)"

    .line 102
    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->d()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VACUUM"

    .line 104
    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    :cond_1
    throw v1
.end method

.method protected createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
    .locals 2

    .line 89
    new-instance v0, Landroid/arch/persistence/room/InvalidationTracker;

    const-string v1, "history"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/arch/persistence/room/InvalidationTracker;-><init>(Landroid/arch/persistence/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 28
    new-instance v0, Landroid/arch/persistence/room/RoomOpenHelper;

    new-instance v1, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl$1;-><init>(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom_RestApiHistoryDatabase_Impl;I)V

    const-string v2, "b22a8021ff59d58c96685253cc0cfaf9"

    const-string v3, "32d18285bb90078c8a15bec62699a962"

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/arch/persistence/room/RoomOpenHelper;-><init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->a(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->c:Ljava/lang/String;

    .line 80
    invoke-virtual {v1, v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->a(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->a(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->a()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 83
    iget-object p1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->a:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;->a(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method
