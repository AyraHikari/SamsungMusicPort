.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteDbOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->h()J
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

    .line 535
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$9;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 538
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 539
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$9;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->e(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$9;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->e(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_1

    .line 544
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 538
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    .line 544
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v0
.end method
