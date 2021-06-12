.class public Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DBHandler"

.field private static b:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

.field private static d:Landroid/content/Context;

.field private static final e:Ljava/lang/Object;

.field private static f:I


# instance fields
.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private g:Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;-><init>(Lcom/samsung/android/sdk/ppmt/storage/DBHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->g:Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;

    .line 107
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->g:Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private declared-synchronized A(Ljava/lang/String;)J
    .locals 7

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 1479
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cumulative_data_reg"

    const-string v4, "type=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v2, v3, v4, v5}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1481
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get cumulative reg data count error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1483
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 1476
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized B(Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    .line 1490
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cumulative_data_reg"

    const-string v2, "_id"

    const-string v3, "min(cast(_id as decimal))"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 1494
    monitor-exit p0

    return-void

    .line 1496
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 1497
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 1499
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, v3, v1

    if-nez p1, :cond_2

    .line 1502
    monitor-exit p0

    return-void

    .line 1505
    :cond_2
    :try_start_2
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->e(J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1507
    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete oldest cumulative reg data error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1509
    :goto_1
    monitor-exit p0

    return-void

    .line 1489
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 244
    :cond_0
    sput-object p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    .line 245
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    sget v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f:I

    .line 247
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db open : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 250
    :try_start_1
    new-instance v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 252
    :try_start_2
    sget v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f:I

    .line 253
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    monitor-exit v1

    return-object v0

    .line 257
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 258
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 947
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 948
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eq v1, p2, :cond_0

    .line 950
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private declared-synchronized d(J)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 1267
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cumulative_data"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1269
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] fail to delete cumulative data. database delete exception. "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1270
    monitor-exit p0

    return v0

    .line 1266
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized e(J)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 1512
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cumulative_data_reg"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1514
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] fail to delete cumulative reg data. database delete exception. "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1515
    monitor-exit p0

    return v0

    .line 1511
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized z(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1249
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cumulative_data"

    const/4 v3, 0x0

    const-string v4, "type=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id ASC"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1252
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    .line 1253
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v3, "type"

    .line 1254
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1255
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    const-string v5, "data"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1256
    new-instance v5, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1258
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1260
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get cumulative data error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1262
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 1248
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(J)I
    .locals 9

    monitor-enter p0

    const-wide/32 v0, 0x36ee80

    const/4 v2, 0x0

    .line 695
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT (*) FROM card WHERE mdt>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long/2addr v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mtype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "!=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "test"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " NOT LIKE \'%_test\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 699
    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 700
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " cards displayed in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v6, p1, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " hours"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 708
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 702
    :cond_0
    monitor-exit p0

    return v2

    :cond_1
    if-eqz v3, :cond_2

    .line 708
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 705
    :goto_0
    :try_start_4
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to count cards displayed in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p1, v0

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " hours:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 708
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    :goto_1
    const/4 p1, -0x1

    .line 711
    monitor-exit p0

    return p1

    :goto_2
    if-eqz v2, :cond_3

    .line 708
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    :cond_3
    :goto_3
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 690
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    .line 301
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 302
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string p2, "fail to add card. mid null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return v1

    .line 306
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mid"

    .line 307
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tid"

    .line 308
    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "mtype"

    .line 309
    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "data"

    .line 310
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "state"

    .line 311
    sget-object p3, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ppmt/content/CardState;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "rc"

    const/4 p3, 0x0

    .line 312
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "mrt"

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    :try_start_2
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "card"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long p2, p2, v2

    if-nez p2, :cond_1

    .line 317
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "] fail to add card"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    monitor-exit p0

    return v1

    .line 324
    :cond_1
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b(Ljava/lang/String;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p2

    .line 321
    :try_start_4
    sget-object p3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to add card. "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 322
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 298
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/Map;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1352
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1353
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1, p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1356
    :try_start_1
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update custom data error. database insert or replace exception. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1358
    :cond_0
    monitor-exit p0

    return v0

    .line 1349
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/samsung/android/sdk/ppmt/content/CardState;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ppmt/content/CardState;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 734
    :try_start_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v1, "fail to get cardlist. state null"

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 738
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 741
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "card"

    const-string v4, "mid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "state=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 742
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/CardState;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v11, 0x0

    aput-object p1, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 741
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 743
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 744
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    if-eqz p1, :cond_2

    .line 752
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 746
    :cond_2
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    goto :goto_1

    :catch_1
    move-exception v1

    move-object p1, v0

    .line 748
    :goto_0
    :try_start_5
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get card list. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p1, :cond_3

    .line 752
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 749
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception v0

    :goto_1
    if-eqz p1, :cond_4

    .line 752
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 732
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public a()V
    .locals 5

    .line 262
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    sget v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->g:Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 265
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 266
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->g:Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 268
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 270
    iput-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 271
    iput-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->g:Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;

    .line 272
    sput-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    const/4 v1, 0x0

    .line 273
    sput v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f:I

    .line 275
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db close : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 12

    monitor-enter p0

    .line 280
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 281
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 286
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "card"

    const-string v4, "_id"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 293
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 288
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    goto :goto_0

    :catch_0
    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_2

    .line 293
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1

    :catch_1
    nop

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 290
    :cond_3
    monitor-exit p0

    return v1

    :catchall_2
    move-exception p1

    .line 279
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;I)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 351
    :try_start_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string p2, "fail to update card retry count. mid null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 356
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "rc"

    .line 357
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "card"

    const-string v3, "mid = ?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 359
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 358
    invoke-virtual {p2, v2, v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    .line 361
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] fail to update card retry count. no data to update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    monitor-exit p0

    return v0

    .line 364
    :cond_1
    monitor-exit p0

    return v4

    :catch_0
    move-exception p2

    .line 366
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to update card retry count. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    monitor-exit p0

    return v0

    .line 349
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;J)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 373
    :try_start_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string p2, "fail to update card received time. mid null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 378
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mrt"

    .line 379
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 380
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "card"

    const-string v2, "mid = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 381
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 380
    invoke-virtual {p2, p3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    .line 383
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fail to update card received time. no data to update"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    monitor-exit p0

    return v0

    .line 386
    :cond_1
    monitor-exit p0

    return v3

    :catch_0
    move-exception p2

    .line 388
    :try_start_2
    sget-object p3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to update card received time. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    monitor-exit p0

    return v0

    .line 371
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 332
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] card state - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "state"

    .line 335
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/CardState;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "card"

    const-string v3, "mid = ?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 337
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 336
    invoke-virtual {p2, v2, v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    .line 339
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] fail to update card state. no data to update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    monitor-exit p0

    return v0

    .line 342
    :cond_1
    monitor-exit p0

    return v4

    :catch_0
    move-exception p2

    .line 344
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to update card state. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    monitor-exit p0

    return v0

    .line 329
    :cond_2
    :goto_0
    :try_start_3
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to update card state. invalid params"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 327
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)Z
    .locals 8

    monitor-enter p0

    .line 825
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 830
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 831
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to add feedback. card not exists."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    monitor-exit p0

    return v1

    .line 836
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->l(Ljava/lang/String;)Z

    move-result v0

    .line 838
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 840
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->l(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 841
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 842
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 843
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    .line 845
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->m(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 846
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->n(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 847
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->o(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    if-nez v6, :cond_3

    goto/16 :goto_1

    .line 853
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->value()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    if-nez p3, :cond_4

    const-string p3, ""

    .line 857
    :cond_4
    invoke-virtual {v5, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 858
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 860
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "mid"

    .line 861
    invoke-virtual {p3, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    sget-object v7, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {v7, p2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "lfbid"

    .line 863
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->value()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    const-string p2, "lts"

    .line 865
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "fbid"

    .line 866
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "fv"

    .line 867
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ts"

    .line 868
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "state"

    const-string v2, "wait"

    .line 869
    invoke-virtual {p3, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "try"

    .line 870
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x1

    if-nez v0, :cond_6

    .line 873
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "feedback"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p3, v2, v4

    if-nez p3, :cond_7

    .line 875
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] fail to add feedback. insert fail"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 876
    monitor-exit p0

    return v1

    .line 879
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "feedback"

    const-string v3, "mid = ?"

    new-array v4, p2, [Ljava/lang/String;

    .line 880
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 879
    invoke-virtual {v0, v2, p3, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_7

    .line 882
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] fail to add feedback. no data to update"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 883
    monitor-exit p0

    return v1

    .line 890
    :cond_7
    monitor-exit p0

    return p2

    .line 849
    :cond_8
    :goto_1
    :try_start_3
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] fail to add feedback. invalid params"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 850
    monitor-exit p0

    return v1

    :catch_0
    move-exception p2

    .line 887
    :try_start_4
    sget-object p3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] addFeedbackData. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 888
    monitor-exit p0

    return v1

    .line 826
    :cond_9
    :goto_2
    :try_start_5
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to add feedback. invalid params"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 827
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 824
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->j(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 764
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 766
    :try_start_1
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 768
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "extra"

    .line 769
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "card"

    const-string v4, "mid = ?"

    new-array v5, v2, [Ljava/lang/String;

    .line 771
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 770
    invoke-virtual {v1, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    .line 773
    monitor-exit p0

    return v0

    :catch_0
    move-exception p2

    .line 776
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to update card extra. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 777
    monitor-exit p0

    return v0

    .line 780
    :cond_1
    monitor-exit p0

    return v2

    .line 759
    :cond_2
    :goto_0
    :try_start_3
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to remove card extra data. invalid params"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 760
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 757
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->j(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 445
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :cond_1
    :try_start_1
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string p3, "extra"

    .line 451
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object p3, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "card"

    const-string v2, "mid = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 453
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 452
    invoke-virtual {p3, v1, p2, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_2

    .line 455
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fail to update card extra. no data to update"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    monitor-exit p0

    return v0

    .line 458
    :cond_2
    monitor-exit p0

    return v3

    :catch_0
    move-exception p2

    .line 460
    :try_start_2
    sget-object p3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to update card extra. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    monitor-exit p0

    return v0

    .line 439
    :cond_3
    :goto_0
    :try_start_3
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to update card extra. invalid params"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 440
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 437
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 9

    monitor-enter p0

    .line 894
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 899
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->l(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 900
    monitor-exit p0

    return v2

    .line 904
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->m(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 905
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->n(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 906
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->o(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    move-object v5, v4

    move-object v4, v3

    move-object v3, v0

    const/4 v0, 0x0

    .line 912
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_6

    const/4 v6, 0x0

    .line 913
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 914
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 915
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_3

    .line 916
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 917
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 918
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 920
    :cond_3
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v3

    .line 921
    invoke-direct {p0, v4, v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v4

    .line 922
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v5

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 929
    :cond_6
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "fbid"

    .line 930
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fv"

    .line 931
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ts"

    .line 932
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "feedback"

    const-string v4, "mid = ?"

    new-array v5, v2, [Ljava/lang/String;

    .line 934
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 933
    invoke-virtual {v0, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_7

    .line 936
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] fail to delete fbid."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 937
    monitor-exit p0

    return v1

    .line 939
    :cond_7
    monitor-exit p0

    return v2

    .line 908
    :cond_8
    :goto_3
    :try_start_2
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] fail to delete fbid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 909
    monitor-exit p0

    return v1

    :catch_0
    move-exception p2

    .line 941
    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to delete fbid. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 942
    monitor-exit p0

    return v1

    .line 895
    :cond_9
    :goto_4
    :try_start_4
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to delete fbid. invalid params"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 896
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 893
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1447
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;

    .line 1448
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "send_done"

    .line 1449
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "key=?"

    .line 1451
    new-array v2, v2, [Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    iget-object v1, v1, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->a:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 1452
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "update_data"

    invoke-virtual {v1, v5, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1458
    :cond_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1455
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send done update error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1456
    monitor-exit p0

    return v0

    .line 1446
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)I
    .locals 13

    monitor-enter p0

    .line 468
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 469
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get displayid. mid null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 470
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 475
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "card"

    const-string v4, "_id"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 477
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 486
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 478
    :cond_1
    monitor-exit p0

    return v0

    :cond_2
    if-eqz v2, :cond_3

    .line 486
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 480
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 482
    :goto_0
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get displayid. "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 486
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 483
    :cond_4
    monitor-exit p0

    return v1

    :goto_1
    if-eqz v0, :cond_5

    .line 486
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 465
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string p2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 1314
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "update_data"

    const/4 v3, 0x0

    const-string v4, "key=? AND type=?"

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v10, 0x1

    aput-object p3, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 1316
    monitor-exit p0

    return v0

    .line 1319
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1321
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    const-string v3, "value"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1323
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1325
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "type"

    .line 1326
    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "value"

    .line 1327
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    invoke-static {v4, p2}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "send_done"

    .line 1328
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1329
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "update_data"

    const-string v4, "key=? AND type=?"

    new-array v5, v9, [Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    aput-object p3, v5, v10

    invoke-virtual {p2, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1334
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "key"

    .line 1335
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type"

    .line 1336
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 1337
    sget-object p3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "send_done"

    .line 1338
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1339
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "update_data"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_1
    const/4 v0, 0x1

    .line 1342
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1344
    :try_start_3
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upsert update data error. "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1346
    :goto_2
    monitor-exit p0

    return v0

    .line 1307
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 715
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 718
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "card"

    const-string v4, "mid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 719
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 720
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 726
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    .line 723
    :goto_1
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to get all cardlist. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_1

    .line 726
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 729
    :cond_1
    :goto_2
    monitor-exit p0

    return-object v0

    :goto_3
    if-eqz v1, :cond_2

    .line 726
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 714
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 1277
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cumulative_data"

    const-string v3, "_id<=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1279
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] fail to truncate cumulative data. database delete exception. "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1280
    monitor-exit p0

    return v0

    .line 1276
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;I)Z
    .locals 7

    monitor-enter p0

    .line 1100
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1101
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string p2, "fail to set fb trycount. mid null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    monitor-exit p0

    return v1

    .line 1106
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "try"

    .line 1107
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1108
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "feedback"

    const-string v3, "mid = ?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 1109
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1108
    invoke-virtual {p2, v2, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    .line 1111
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] fail to set fb trycount. no data to update"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1112
    monitor-exit p0

    return v1

    .line 1114
    :cond_1
    monitor-exit p0

    return v4

    :catch_0
    move-exception p2

    .line 1116
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to set fb trycount. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1117
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 1099
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;J)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 395
    :try_start_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string p2, "fail to update card displayed time. mid null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 400
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mdt"

    .line 401
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "card"

    const-string v2, "mid = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 403
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 402
    invoke-virtual {p2, p3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    .line 405
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fail to update card displayed time. no data to update"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    monitor-exit p0

    return v0

    .line 408
    :cond_1
    monitor-exit p0

    return v3

    :catch_0
    move-exception p2

    .line 410
    :try_start_2
    sget-object p3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to update card displayed time. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 411
    monitor-exit p0

    return v0

    .line 393
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string v1, "discard"

    .line 1077
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "wait"

    .line 1078
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1079
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to set fb state. invalid state"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    monitor-exit p0

    return v0

    .line 1084
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "state"

    .line 1085
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "feedback"

    const-string v3, "mid = ?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 1087
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1086
    invoke-virtual {p2, v2, v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_2

    .line 1089
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] fail to set fb state. no data to update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    monitor-exit p0

    return v0

    .line 1092
    :cond_2
    monitor-exit p0

    return v4

    :catch_0
    move-exception p2

    .line 1094
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to set fb state. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1095
    monitor-exit p0

    return v0

    .line 1074
    :cond_3
    :goto_0
    :try_start_3
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to set fb state. invalid params"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1075
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 1072
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    monitor-enter p0

    .line 1194
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "type"

    .line 1195
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    .line 1196
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cumulative_data"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catch_0
    move-exception p2

    .line 1201
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " data. database insert exception. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 p1, -0x1

    .line 1203
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 1193
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    monitor-enter p0

    .line 492
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 493
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get userdata. mid null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 494
    monitor-exit p0

    return-object v1

    .line 499
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "card"

    const-string v0, "data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 502
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 510
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 502
    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    if-eqz v2, :cond_3

    .line 510
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 504
    :cond_3
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 506
    :goto_0
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get userdata. "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_4

    .line 510
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 507
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_5

    .line 510
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 491
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "lo"

    .line 1239
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->z(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(J)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 1521
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cumulative_data_reg"

    const-string v3, "_id<=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1523
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] fail to truncate cumulative reg data. database delete exception. "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1524
    monitor-exit p0

    return v0

    .line 1520
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;J)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 417
    :try_start_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string p2, "fail to update card expected display time. mid null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 422
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "expdt"

    .line 423
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 424
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "card"

    const-string v2, "mid = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 425
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 424
    invoke-virtual {p2, p3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    .line 427
    sget-object p2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fail to update card expected display time. no data to update"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    monitor-exit p0

    return v0

    .line 430
    :cond_1
    monitor-exit p0

    return v3

    :catch_0
    move-exception p2

    .line 432
    :try_start_2
    sget-object p3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to update card expected display time. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    monitor-exit p0

    return v0

    .line 415
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    monitor-enter p0

    .line 1463
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "type"

    .line 1464
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    .line 1465
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cumulative_data_reg"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catch_0
    move-exception p2

    .line 1469
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reg data. database insert exception. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 p1, -0x1

    .line 1471
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 1462
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;
    .locals 11

    monitor-enter p0

    .line 516
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 517
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get cardstate. mid null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 518
    monitor-exit p0

    return-object v1

    .line 523
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "card"

    const-string v0, "state"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 526
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->fromString(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 534
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 526
    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    if-eqz v2, :cond_3

    .line 534
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 528
    :cond_3
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 530
    :goto_0
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get cardstate. "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_4

    .line 534
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 531
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_5

    .line 534
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 515
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "iap"

    .line 1242
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->z(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    monitor-enter p0

    .line 540
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 541
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get msgtype. mid null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 542
    monitor-exit p0

    return-object v1

    .line 547
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "card"

    const-string v0, "mtype"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 550
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 558
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 550
    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    if-eqz v2, :cond_3

    .line 558
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 552
    :cond_3
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 554
    :goto_0
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get msgtype. "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_4

    .line 558
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 555
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_5

    .line 558
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 539
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "app"

    .line 1245
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->z(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1548
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR REPLACE INTO temp_data (key, data) VALUES (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\')"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1553
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 1556
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to update temp data. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1558
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1547
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    monitor-enter p0

    .line 564
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 565
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get targetid. mid null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 566
    monitor-exit p0

    return-object v1

    .line 571
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "card"

    const-string v0, "tid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 574
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 582
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 574
    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    if-eqz v2, :cond_3

    .line 582
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 576
    :cond_3
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 578
    :goto_0
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get targetid. "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_4

    .line 582
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 579
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_5

    .line 582
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 563
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f()Z
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    .line 1289
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "update_data"

    const/4 v3, 0x0

    const-string v4, "key=? AND type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    const-string v7, "bAgreement"

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x1

    const-string v7, "cs"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1295
    monitor-exit p0

    return v0

    .line 1298
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1299
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    const-string v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    .line 1300
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1302
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1291
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get marketing agree error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1292
    monitor-exit p0

    return v0

    .line 1288
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(Ljava/lang/String;)I
    .locals 13

    monitor-enter p0

    .line 590
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 591
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get targetid. mid null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 592
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 597
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "card"

    const-string v4, "rc"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 599
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 608
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 600
    :cond_1
    monitor-exit p0

    return v0

    :cond_2
    if-eqz v2, :cond_3

    .line 608
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 602
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 604
    :goto_0
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get targetid. "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 608
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 605
    :cond_4
    monitor-exit p0

    return v1

    :goto_1
    if-eqz v0, :cond_5

    .line 608
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 587
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g()J
    .locals 6

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "send_done=?"

    const/4 v3, 0x1

    .line 1365
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1366
    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "update_data"

    invoke-static {v4, v5, v2, v3}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1368
    :try_start_1
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get getSendYetDataCount data error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1370
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 1361
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h(Ljava/lang/String;)J
    .locals 14

    monitor-enter p0

    .line 616
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 617
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get expected displaytime. mid null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 618
    monitor-exit p0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    .line 623
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "card"

    const-string v5, "mrt"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "mid=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v7, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 625
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 634
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 626
    :cond_1
    monitor-exit p0

    return-wide v4

    :cond_2
    if-eqz v3, :cond_3

    .line 634
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 628
    :cond_3
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v13, v3

    move-object v3, v0

    move-object v0, v13

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 630
    :goto_0
    :try_start_5
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get expected displaytime. "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 634
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 631
    :cond_4
    monitor-exit p0

    return-wide v1

    :goto_1
    if-eqz v0, :cond_5

    .line 634
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 613
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1374
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "send_done=? OR type=? OR key=?"

    const/4 v1, 0x3

    .line 1379
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1380
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "bs"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    const-string v3, "bAgreement"

    .line 1382
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1384
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "update_data"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1385
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1386
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    const-string v3, "key"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1387
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    const-string v4, "value"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    .line 1388
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1389
    new-instance v5, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;

    invoke-direct {v5, v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1391
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1393
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get updated data error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1395
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1373
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i(Ljava/lang/String;)J
    .locals 14

    monitor-enter p0

    .line 642
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 643
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get expected displaytime. mid null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 644
    monitor-exit p0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    .line 649
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "card"

    const-string v5, "expdt"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "mid=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v7, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 651
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 652
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 660
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 652
    :cond_1
    monitor-exit p0

    return-wide v4

    :cond_2
    if-eqz v3, :cond_3

    .line 660
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 654
    :cond_3
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v13, v3

    move-object v3, v0

    move-object v0, v13

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 656
    :goto_0
    :try_start_5
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get expected displaytime. "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 660
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 657
    :cond_4
    monitor-exit p0

    return-wide v1

    :goto_1
    if-eqz v0, :cond_5

    .line 660
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 639
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1399
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 1403
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "update_data"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1404
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1405
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    const-string v4, "key"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1406
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    const-string v5, "value"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    .line 1407
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1408
    new-instance v6, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;

    invoke-direct {v6, v3, v4, v5}, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 1415
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1419
    :cond_1
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 1411
    :goto_1
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get all updated data error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 1415
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1412
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v2, :cond_3

    .line 1415
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 1398
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1423
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "type=? OR key=?"

    const/4 v1, 0x2

    .line 1427
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bs"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    const-string v3, "bAgreement"

    .line 1429
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1431
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "update_data"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1432
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1433
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    const-string v3, "key"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1434
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    const-string v4, "value"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    .line 1435
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1436
    new-instance v5, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;

    invoke-direct {v5, v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1438
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1440
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get updated mandatory data error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1442
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1422
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 667
    :try_start_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v1, "fail to get card extra. mid null"

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 673
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "card"

    const-string v3, "extra"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "mid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 675
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 676
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 677
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 685
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 677
    :cond_2
    monitor-exit p0

    return-object v0

    :cond_3
    if-eqz v1, :cond_4

    .line 685
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 679
    :cond_4
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 681
    :goto_1
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get card extra. "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_5

    .line 685
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 682
    :cond_5
    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception p1

    :goto_2
    if-eqz v1, :cond_6

    .line 685
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 665
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k()J
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "start"

    .line 1474
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->A(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k(Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    .line 784
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 785
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to delete card data. mid null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    monitor-exit p0

    return v1

    .line 789
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "card"

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 790
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 789
    invoke-virtual {v0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 792
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] fail to delete card"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    monitor-exit p0

    return v1

    .line 795
    :cond_1
    monitor-exit p0

    return v4

    :catch_0
    move-exception v0

    .line 797
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to delete card. "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 798
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 783
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized l()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "start"

    .line 1486
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->B(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1487
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1485
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l(Ljava/lang/String;)Z
    .locals 12

    monitor-enter p0

    .line 805
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 806
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to check if feedback exists. mid null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 807
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 811
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "feedback"

    const-string v4, "mid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 813
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 819
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 813
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 815
    :goto_0
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to check if feedback exists: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_2

    .line 819
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 816
    :cond_2
    monitor-exit p0

    return v1

    :goto_1
    if-eqz v0, :cond_3

    .line 819
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 804
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized m(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 11

    monitor-enter p0

    .line 957
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 958
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get fbid. invalid params"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 959
    monitor-exit p0

    return-object v1

    .line 963
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "feedback"

    const-string v0, "fbid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 966
    new-instance v3, Lorg/json/JSONArray;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 974
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 966
    :cond_1
    monitor-exit p0

    return-object v3

    :cond_2
    if-eqz v2, :cond_3

    .line 974
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 968
    :cond_3
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 970
    :goto_0
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get fbid. "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_4

    .line 974
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 971
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_5

    .line 974
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 956
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized m()V
    .locals 2

    monitor-enter p0

    .line 1603
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    const-string v1, "ppmt.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1604
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1602
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 11

    monitor-enter p0

    .line 980
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 981
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get feedbackvalues. invalid params"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 982
    monitor-exit p0

    return-object v1

    .line 986
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "feedback"

    const-string v0, "fv"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 988
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 989
    new-instance v3, Lorg/json/JSONArray;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 997
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 989
    :cond_1
    monitor-exit p0

    return-object v3

    :cond_2
    if-eqz v2, :cond_3

    .line 997
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 991
    :cond_3
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 993
    :goto_0
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get feedbackvalues. "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_4

    .line 997
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 994
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_5

    .line 997
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 979
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized o(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 11

    monitor-enter p0

    .line 1003
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1004
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get feedback times. invalid params"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1005
    monitor-exit p0

    return-object v1

    .line 1009
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "feedback"

    const-string v0, "ts"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1011
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1012
    new-instance v3, Lorg/json/JSONArray;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 1020
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1012
    :cond_1
    monitor-exit p0

    return-object v3

    :cond_2
    if-eqz v2, :cond_3

    .line 1020
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1014
    :cond_3
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 1016
    :goto_0
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get feedback times. "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_4

    .line 1020
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1017
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_5

    .line 1020
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 1002
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized p(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    .locals 11

    monitor-enter p0

    .line 1026
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1027
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get lastfbid. invalid params"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1028
    monitor-exit p0

    return-object v1

    .line 1032
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "feedback"

    const-string v0, "lfbid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1034
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1035
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->fromInt(I)Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 1043
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1035
    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    if-eqz v2, :cond_3

    .line 1043
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1037
    :cond_3
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 1039
    :goto_0
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get lastfbid. "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_4

    .line 1043
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1040
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_5

    .line 1043
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 1025
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized q(Ljava/lang/String;)J
    .locals 14

    monitor-enter p0

    .line 1049
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 1050
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get lts. mid null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1051
    monitor-exit p0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    .line 1056
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "feedback"

    const-string v5, "lts"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "mid=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v7, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1058
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1059
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 1067
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1059
    :cond_1
    monitor-exit p0

    return-wide v4

    :cond_2
    if-eqz v3, :cond_3

    .line 1067
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1061
    :cond_3
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v13, v3

    move-object v3, v0

    move-object v0, v13

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 1063
    :goto_0
    :try_start_5
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get lts. "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 1067
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1064
    :cond_4
    monitor-exit p0

    return-wide v1

    :goto_1
    if-eqz v0, :cond_5

    .line 1067
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 1048
    monitor-exit p0

    throw p1
.end method

.method public r(Ljava/lang/String;)I
    .locals 13

    .line 1122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1123
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get fb trycount. mid null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1128
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "feedback"

    const-string v4, "try"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1130
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1131
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 1139
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return v1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1135
    :goto_0
    :try_start_2
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get fb trycount. "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_4

    .line 1139
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v1

    :goto_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method public declared-synchronized s(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    monitor-enter p0

    .line 1145
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1146
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get fb state. mid null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1147
    monitor-exit p0

    return-object v1

    .line 1151
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "feedback"

    const-string v0, "state"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1153
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1154
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 1162
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1154
    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    if-eqz v2, :cond_3

    .line 1162
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1156
    :cond_3
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 1158
    :goto_0
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get fb state"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_4

    .line 1162
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1159
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_5

    .line 1162
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 1144
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized t(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1169
    :try_start_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v1, "fail to get all feedback. state null"

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 1172
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1175
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "feedback"

    const-string v4, "mid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "state=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1177
    :goto_0
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1178
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1186
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1180
    :cond_2
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p1, v0

    .line 1182
    :goto_1
    :try_start_5
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get all feedback. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p1, :cond_3

    .line 1186
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1183
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception v0

    :goto_2
    if-eqz p1, :cond_4

    .line 1186
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1167
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized u(Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    .line 1207
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cumulative_data"

    const-string v2, "_id"

    const-string v3, "min(cast(_id as decimal))"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 1212
    monitor-exit p0

    return-void

    .line 1214
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 1215
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 1217
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, v3, v1

    if-nez p1, :cond_2

    .line 1220
    monitor-exit p0

    return-void

    .line 1223
    :cond_2
    :try_start_2
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d(J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1225
    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to delete oldest cumulative data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1227
    :goto_1
    monitor-exit p0

    return-void

    .line 1206
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized v(Ljava/lang/String;)J
    .locals 7

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 1231
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cumulative_data"

    const-string v4, "type=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v2, v3, v4, v5}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1233
    :try_start_1
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get cumulative data count type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1235
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 1228
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized w(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1529
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cumulative_data_reg"

    const/4 v3, 0x0

    const-string v4, "type=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id ASC"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1532
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    .line 1533
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v3, "type"

    .line 1534
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1535
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    const-string v5, "data"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1536
    new-instance v5, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1538
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1540
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get cumulative reg data error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1542
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 1528
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized x(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    monitor-enter p0

    .line 1561
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1562
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to get temp data. key null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1563
    monitor-exit p0

    return-object v1

    .line 1568
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "temp_data"

    const-string v0, "data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "key=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1570
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1571
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d:Landroid/content/Context;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 1579
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1571
    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    if-eqz v2, :cond_3

    .line 1579
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1573
    :cond_3
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 1575
    :goto_0
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get temp data. "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_4

    .line 1579
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1576
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_5

    .line 1579
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 1560
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized y(Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    .line 1585
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1586
    sget-object p1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    const-string v0, "fail to delete temp data. key null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1587
    monitor-exit p0

    return v1

    .line 1590
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "temp_data"

    const-string v3, "key=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 1591
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1590
    invoke-virtual {v0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1593
    monitor-exit p0

    return v1

    .line 1595
    :cond_1
    monitor-exit p0

    return v4

    :catch_0
    move-exception v0

    .line 1597
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to delete temp data. "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1598
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 1584
    monitor-exit p0

    throw p1
.end method
