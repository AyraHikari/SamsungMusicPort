.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;
.super Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;
.source "CacheRoom_AppDatabase_Impl.java"


# instance fields
.field public volatile a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic f(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic g(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic h(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic i(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic j(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;Landroidx/sqlite/db/b;)Landroidx/sqlite/db/b;
    .locals 0

    iput-object p1, p0, Landroidx/room/j;->mDatabase:Landroidx/sqlite/db/b;

    return-object p1
.end method

.method public static synthetic k(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;Landroidx/sqlite/db/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/j;->internalInitInvalidationTracker(Landroidx/sqlite/db/b;)V

    return-void
.end method

.method public static synthetic l(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic m(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/c;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/c;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;->a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 1
    invoke-super {p0}, Landroidx/room/j;->assertNotMainThread()V

    .line 2
    invoke-super {p0}, Landroidx/room/j;->getOpenHelper()Landroidx/sqlite/db/c;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/c;->getWritableDatabase()Landroidx/sqlite/db/b;

    move-result-object v2

    .line 3
    :try_start_0
    invoke-super {p0}, Landroidx/room/j;->beginTransaction()V

    const-string v3, "DELETE FROM `streaming_cache`"

    .line 4
    invoke-interface {v2, v3}, Landroidx/sqlite/db/b;->y(Ljava/lang/String;)V

    .line 5
    invoke-super {p0}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-super {p0}, Landroidx/room/j;->endTransaction()V

    .line 7
    invoke-interface {v2, v1}, Landroidx/sqlite/db/b;->s0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8
    invoke-interface {v2}, Landroidx/sqlite/db/b;->D0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-interface {v2, v0}, Landroidx/sqlite/db/b;->y(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 10
    invoke-super {p0}, Landroidx/room/j;->endTransaction()V

    .line 11
    invoke-interface {v2, v1}, Landroidx/sqlite/db/b;->s0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-interface {v2}, Landroidx/sqlite/db/b;->D0()Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-interface {v2, v0}, Landroidx/sqlite/db/b;->y(Ljava/lang/String;)V

    .line 14
    :cond_1
    throw v3
.end method

.method public createInvalidationTracker()Landroidx/room/g;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Landroidx/room/g;

    const-string v3, "streaming_cache"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/g;-><init>(Landroidx/room/j;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public createOpenHelper(Landroidx/room/a;)Landroidx/sqlite/db/c;
    .locals 4

    .line 1
    new-instance v0, Landroidx/room/l;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl$a;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom_AppDatabase_Impl;I)V

    const-string v2, "9be6c0e046eadad04fbabf49b9a50f3a"

    const-string v3, "3d1e8fb4f7fa7184db857ee2ce61b2b5"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/l;-><init>(Landroidx/room/a;Landroidx/room/l$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Landroidx/room/a;->b:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/c$b;->a(Landroid/content/Context;)Landroidx/sqlite/db/c$b$a;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/a;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/c$b$a;->c(Ljava/lang/String;)Landroidx/sqlite/db/c$b$a;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/c$b$a;->b(Landroidx/sqlite/db/c$a;)Landroidx/sqlite/db/c$b$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/sqlite/db/c$b$a;->a()Landroidx/sqlite/db/c$b;

    move-result-object v0

    .line 6
    iget-object p1, p1, Landroidx/room/a;->a:Landroidx/sqlite/db/c$c;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/c$c;->a(Landroidx/sqlite/db/c$b;)Landroidx/sqlite/db/c;

    move-result-object p1

    return-object p1
.end method
