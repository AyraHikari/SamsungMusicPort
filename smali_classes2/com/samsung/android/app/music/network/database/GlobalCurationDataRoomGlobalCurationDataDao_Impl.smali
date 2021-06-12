.class public Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDao;


# instance fields
.field private final a:Landroid/arch/persistence/room/RoomDatabase;

.field private final b:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final c:Landroid/arch/persistence/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    .line 23
    new-instance v0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl$1;-><init>(Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->b:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl$2;-><init>(Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->c:Landroid/arch/persistence/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationData;)J
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->b:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object p1, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "SELECT date FROM globalCurationData WHERE title = ?"

    const/4 v1, 0x1

    .line 104
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 107
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    .line 111
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    .line 114
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 115
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 121
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 122
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 121
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 122
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->c:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 77
    :try_start_0
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 79
    :cond_0
    invoke-interface {v0, v1, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x2

    if-nez p3, :cond_1

    .line 83
    invoke-interface {v0, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_1

    .line 85
    :cond_1
    invoke-interface {v0, p2, p3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    :goto_1
    const/4 p2, 0x3

    if-nez p1, :cond_2

    .line 89
    invoke-interface {v0, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_2

    .line 91
    :cond_2
    invoke-interface {v0, p2, p1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    .line 93
    :goto_2
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a()I

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->c:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    .line 96
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 97
    iget-object p2, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->c:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "SELECT data FROM globalCurationData WHERE title = ?"

    const/4 v1, 0x1

    .line 129
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 132
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoomGlobalCurationDataDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    .line 139
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 140
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 146
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 147
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 146
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 147
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v1
.end method
