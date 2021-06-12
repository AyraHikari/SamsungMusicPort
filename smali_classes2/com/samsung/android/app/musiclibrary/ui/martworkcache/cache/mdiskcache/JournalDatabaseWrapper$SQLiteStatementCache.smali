.class final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SQLiteStatementCache"
.end annotation


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteStatement;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;->b:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;->c:Ljava/lang/Object;

    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteStatementCache;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
