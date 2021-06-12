.class public Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDao;


# instance fields
.field private final a:Landroid/arch/persistence/room/RoomDatabase;

.field private final b:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final c:Landroid/arch/persistence/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    .line 21
    new-instance v0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl$1;-><init>(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->b:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 47
    new-instance v0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl$2;-><init>(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->c:Landroid/arch/persistence/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;)J
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->b:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public a()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->c:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 73
    :try_start_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a()I

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v1, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->c:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 76
    iget-object v2, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 77
    iget-object v2, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;->c:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v1
.end method
