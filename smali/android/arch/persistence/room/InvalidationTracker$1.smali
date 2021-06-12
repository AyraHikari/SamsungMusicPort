.class Landroid/arch/persistence/room/InvalidationTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/persistence/room/InvalidationTracker;


# direct methods
.method constructor <init>(Landroid/arch/persistence/room/InvalidationTracker;)V
    .locals 0

    .line 297
    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 7

    .line 355
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v0}, Landroid/arch/persistence/room/InvalidationTracker;->a(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v0

    const-string v1, "SELECT * FROM room_table_modification_log WHERE version  > ? ORDER BY version ASC;"

    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->d(Landroid/arch/persistence/room/InvalidationTracker;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 358
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 360
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 362
    iget-object v6, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v6, v6, Landroid/arch/persistence/room/InvalidationTracker;->b:[J

    aput-wide v3, v6, v5

    .line 365
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5, v3, v4}, Landroid/arch/persistence/room/InvalidationTracker;->a(Landroid/arch/persistence/room/InvalidationTracker;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    goto :goto_0

    .line 368
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v3

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 300
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v0}, Landroid/arch/persistence/room/InvalidationTracker;->a(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    const/4 v1, 0x0

    .line 303
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 305
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->b(Landroid/arch/persistence/room/InvalidationTracker;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_0

    .line 342
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 309
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v2, v2, Landroid/arch/persistence/room/InvalidationTracker;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_1

    .line 342
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 314
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->a(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->inTransaction()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_2

    .line 342
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 321
    :cond_2
    :try_start_3
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->c(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v2

    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a()I

    .line 322
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->d(Landroid/arch/persistence/room/InvalidationTracker;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v3}, Landroid/arch/persistence/room/InvalidationTracker;->e(Landroid/arch/persistence/room/InvalidationTracker;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    .line 323
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->a(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    iget-boolean v2, v2, Landroid/arch/persistence/room/RoomDatabase;->mWriteAheadLoggingEnabled:Z

    if-eqz v2, :cond_3

    .line 326
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->a(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->a()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 328
    :try_start_4
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->a()V

    .line 329
    invoke-direct {p0}, Landroid/arch/persistence/room/InvalidationTracker$1;->a()Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 330
    :try_start_5
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 332
    :try_start_6
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->b()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v2, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    move v5, v3

    move-object v3, v1

    move v1, v5

    goto :goto_0

    :catchall_1
    move-exception v3

    :goto_0
    :try_start_7
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->b()V

    throw v3
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_1
    move-exception v2

    move v3, v1

    goto :goto_1

    .line 335
    :cond_3
    :try_start_8
    invoke-direct {p0}, Landroid/arch/persistence/room/InvalidationTracker$1;->a()Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v2

    const/4 v3, 0x0

    :goto_1
    :try_start_9
    const-string v1, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    .line 339
    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 342
    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v3, :cond_5

    .line 345
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v0, v0, Landroid/arch/persistence/room/InvalidationTracker;->d:Landroid/arch/core/internal/SafeIterableMap;

    monitor-enter v0

    .line 346
    :try_start_a
    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v1, v1, Landroid/arch/persistence/room/InvalidationTracker;->d:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;

    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->a:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v3, v3, Landroid/arch/persistence/room/InvalidationTracker;->b:[J

    invoke-virtual {v2, v3}, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->a([J)V

    goto :goto_3

    .line 349
    :cond_4
    monitor-exit v0

    goto :goto_4

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v1

    :cond_5
    :goto_4
    return-void

    .line 342
    :goto_5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
