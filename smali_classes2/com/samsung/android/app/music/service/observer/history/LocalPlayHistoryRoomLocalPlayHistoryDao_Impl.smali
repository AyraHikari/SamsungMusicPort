.class public Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDao;


# instance fields
.field private final a:Landroid/arch/persistence/room/RoomDatabase;

.field private final b:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final c:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

.field private final d:Landroid/arch/persistence/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl$1;-><init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->b:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl$2;-><init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->c:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 71
    new-instance v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl$3;-><init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->d:Landroid/arch/persistence/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    const-string v0, "SELECT COUNT(start_time) FROM local_play_history"

    const/4 v1, 0x0

    .line 154
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 155
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    .line 158
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 166
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return v1

    :catchall_0
    move-exception v1

    .line 165
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 166
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v1
.end method

.method public varargs a([Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;)I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->c:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public a(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM local_play_history ORDER BY start_time DESC LIMIT ?"

    const/4 v1, 0x1

    .line 121
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 123
    invoke-virtual {v0, v1, v2, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(IJ)V

    .line 124
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "start_time"

    .line 126
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "play_length"

    .line 127
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    .line 128
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "artist"

    .line 129
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "album"

    .line 130
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "duration"

    .line 131
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 132
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 135
    new-instance v8, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;

    invoke-direct {v8}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;-><init>()V

    .line 136
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->a:J

    .line 137
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v8, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->b:I

    .line 138
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->c:Ljava/lang/String;

    .line 139
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->d:Ljava/lang/String;

    .line 140
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->e:Ljava/lang/String;

    .line 141
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->f:Ljava/lang/String;

    .line 142
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 147
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v7

    :catchall_0
    move-exception v1

    .line 146
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 147
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v1
.end method

.method public a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->b:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public b()I
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->d:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 109
    :try_start_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a()I

    move-result v1

    .line 110
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 114
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->d:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return v1

    :catchall_0
    move-exception v1

    .line 113
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 114
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;->d:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v1
.end method
