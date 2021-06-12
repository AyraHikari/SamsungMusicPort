.class public Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;


# instance fields
.field private final a:Landroid/arch/persistence/room/RoomDatabase;

.field private final b:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final c:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

.field private final d:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

.field private final e:Landroid/arch/persistence/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl$1;-><init>(Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->b:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl$2;-><init>(Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->c:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 78
    new-instance v0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl$3;-><init>(Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->d:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 113
    new-instance v0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl$4;-><init>(Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->e:Landroid/arch/persistence/room/SharedSQLiteStatement;

    return-void
.end method

.method private a(Landroid/database/Cursor;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;
    .locals 14

    const-string v0, "_id"

    .line 421
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "play_list_id"

    .line 422
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "play_list_name"

    .line 423
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "play_list_description"

    .line 424
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "last_modified_time"

    .line 425
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "item_order"

    .line 426
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "item_ad_info"

    .line 427
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "fixed_play_routine"

    .line 428
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "play_position"

    .line 429
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "play_audio_id"

    .line 430
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 431
    new-instance v10, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    invoke-direct {v10}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;-><init>()V

    const/4 v11, -0x1

    if-eq v0, v11, :cond_0

    .line 433
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v10, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->a:J

    :cond_0
    if-eq v1, v11, :cond_1

    .line 436
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->b:Ljava/lang/String;

    :cond_1
    if-eq v2, v11, :cond_2

    .line 439
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->c:Ljava/lang/String;

    :cond_2
    if-eq v3, v11, :cond_3

    .line 442
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->d:Ljava/lang/String;

    :cond_3
    if-eq v4, v11, :cond_4

    .line 445
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->e:J

    :cond_4
    if-eq v5, v11, :cond_5

    .line 448
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    :cond_5
    if-eq v6, v11, :cond_6

    .line 451
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->g:J

    :cond_6
    if-eq v7, v11, :cond_8

    .line 455
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    .line 456
    :goto_0
    iput-boolean v0, v10, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->h:Z

    :cond_8
    if-eq v8, v11, :cond_9

    .line 459
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->i:I

    :cond_9
    if-eq v9, v11, :cond_a

    .line 462
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->j:J

    :cond_a
    return-object v10
.end method


# virtual methods
.method public varargs a([Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->c:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public a()Landroid/database/Cursor;
    .locals 2

    const-string v0, "SELECT * FROM play_list ORDER BY item_order ASC"

    const/4 v1, 0x0

    .line 187
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const-string v0, "SELECT * FROM play_list WHERE play_list_id=?"

    const/4 v1, 0x1

    .line 277
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 280
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    .line 284
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->b:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public b(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->d:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "SELECT * FROM play_list WHERE play_list_id=?"

    const/4 v2, 0x1

    .line 291
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(I)V

    :goto_0
    move-object/from16 v3, p0

    goto :goto_1

    .line 296
    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 298
    :goto_1
    iget-object v0, v3, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "_id"

    .line 300
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v5, "play_list_id"

    .line 301
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "play_list_name"

    .line 302
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "play_list_description"

    .line 303
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "last_modified_time"

    .line 304
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "item_order"

    .line 305
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "item_ad_info"

    .line 306
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "fixed_play_routine"

    .line 307
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "play_position"

    .line 308
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "play_audio_id"

    .line 309
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 311
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 312
    new-instance v14, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    invoke-direct {v14}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;-><init>()V

    .line 313
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v14, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->a:J

    .line 314
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->b:Ljava/lang/String;

    .line 315
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->c:Ljava/lang/String;

    .line 316
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->d:Ljava/lang/String;

    .line 317
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v14, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->e:J

    .line 318
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    .line 319
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v14, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->g:J

    .line 321
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    const/4 v15, 0x0

    .line 322
    :goto_2
    iput-boolean v15, v14, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->h:Z

    .line 323
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->i:I

    .line 324
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v14, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    .line 330
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 331
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v14

    :catchall_0
    move-exception v0

    .line 330
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 331
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v0
.end method

.method public b()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM play_list ORDER BY item_order ASC"

    const/4 v1, 0x0

    .line 195
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v2

    move-object/from16 v3, p0

    .line 196
    iget-object v0, v3, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "_id"

    .line 198
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v5, "play_list_id"

    .line 199
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "play_list_name"

    .line 200
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "play_list_description"

    .line 201
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "last_modified_time"

    .line 202
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "item_order"

    .line 203
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "item_ad_info"

    .line 204
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "fixed_play_routine"

    .line 205
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "play_position"

    .line 206
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "play_audio_id"

    .line 207
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 208
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 211
    new-instance v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    invoke-direct {v15}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 212
    :try_start_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->a:J

    .line 213
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->b:Ljava/lang/String;

    .line 214
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->c:Ljava/lang/String;

    .line 215
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->d:Ljava/lang/String;

    .line 216
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->e:J

    .line 217
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    .line 218
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->g:J

    .line 220
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 221
    :goto_1
    iput-boolean v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->h:Z

    .line 222
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->i:I

    .line 223
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->j:J

    .line 224
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v2, v16

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-object/from16 v16, v2

    .line 228
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 229
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v14

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 228
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 229
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v0
.end method

.method public varargs b([Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->d:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    .line 151
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public b(Landroid/arch/persistence/db/SupportSQLiteQuery;)[Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    .line 405
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    const/4 v1, 0x0

    .line 407
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a(Landroid/database/Cursor;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    move-result-object v2

    .line 410
    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public c()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM play_list ORDER BY item_order DESC"

    const/4 v1, 0x0

    .line 236
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v2

    move-object/from16 v3, p0

    .line 237
    iget-object v0, v3, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "_id"

    .line 239
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v5, "play_list_id"

    .line 240
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "play_list_name"

    .line 241
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "play_list_description"

    .line 242
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "last_modified_time"

    .line 243
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "item_order"

    .line 244
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "item_ad_info"

    .line 245
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "fixed_play_routine"

    .line 246
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "play_position"

    .line 247
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "play_audio_id"

    .line 248
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 249
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 252
    new-instance v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    invoke-direct {v15}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 253
    :try_start_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->a:J

    .line 254
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->b:Ljava/lang/String;

    .line 255
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->c:Ljava/lang/String;

    .line 256
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->d:Ljava/lang/String;

    .line 257
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->e:J

    .line 258
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    .line 259
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->g:J

    .line 261
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 262
    :goto_1
    iput-boolean v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->h:Z

    .line 263
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->i:I

    .line 264
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->j:J

    .line 265
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v2, v16

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-object/from16 v16, v2

    .line 269
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 270
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    return-object v14

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 269
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 270
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->b()V

    throw v0
.end method

.method public d()I
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->e:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 175
    :try_start_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a()I

    move-result v1

    .line 176
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 180
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->e:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return v1

    :catchall_0
    move-exception v1

    .line 179
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->a:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 180
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomPlayListDao_Impl;->e:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v1
.end method
