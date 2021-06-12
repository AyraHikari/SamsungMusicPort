.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$DBHelper;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteDbOperation;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/database/sqlite/SQLiteDatabase;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper;->a:Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$DBHelper;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteDbOperation;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    :try_start_1
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteDbOperation;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 54
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    .line 52
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_1
    move-exception p1

    .line 54
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
