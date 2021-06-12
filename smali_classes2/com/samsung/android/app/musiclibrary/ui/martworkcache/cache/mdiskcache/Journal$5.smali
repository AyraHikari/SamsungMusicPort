.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteDbOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$5;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$5;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 371
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "DiskCacheJournal"

    .line 372
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :catch_0
    :goto_0
    const/4 v5, 0x0

    .line 374
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_0

    .line 376
    :try_start_2
    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->a(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v6, "URI"

    .line 383
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 384
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$5;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v6

    .line 385
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$5;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;-><init>(Landroid/content/ContentValues;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 386
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 390
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ensureReload completed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " records reloaded"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "DiskCacheMaxSize"

    .line 394
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->b:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 396
    :goto_1
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_2

    .line 398
    :try_start_6
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->b(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    const-string v2, "URI"

    .line 404
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$5;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->d(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;

    invoke-direct {v6, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v4, "SMUSIC-ArtWork"

    const-string v6, "failed to read max bitmap size"

    .line 400
    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 408
    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->e()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureReload completed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " max size records reloaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v5, v1

    .line 394
    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_2
    if-eqz p1, :cond_5

    if-eqz v5, :cond_4

    .line 408
    :try_start_a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    :catch_3
    move-exception p1

    :try_start_b
    invoke-virtual {v5, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_4
    move-exception p1

    move-object v5, p1

    .line 372
    :try_start_c
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_4
    if-eqz v2, :cond_7

    if-eqz v5, :cond_6

    .line 390
    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_5

    :catch_5
    move-exception v1

    :try_start_e
    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_5
    throw p1

    :catchall_2
    move-exception p1

    .line 411
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw p1
.end method
