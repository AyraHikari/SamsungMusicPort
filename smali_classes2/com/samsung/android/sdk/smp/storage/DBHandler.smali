.class public Lcom/samsung/android/sdk/smp/storage/DBHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/storage/DBHandler$PpmtDBHelper;,
        Lcom/samsung/android/sdk/smp/storage/DBHandler$DBHelper;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DBHandler"

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/samsung/android/sdk/smp/storage/DBHandler;

.field private static f:I


# instance fields
.field private d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:Lcom/samsung/android/sdk/smp/storage/DBHandler$DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/DBHandler$DBHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler$DBHelper;-><init>(Lcom/samsung/android/sdk/smp/storage/DBHandler;Landroid/content/Context;Lcom/samsung/android/sdk/smp/storage/DBHandler$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->e:Lcom/samsung/android/sdk/smp/storage/DBHandler$DBHelper;

    .line 166
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->e:Lcom/samsung/android/sdk/smp/storage/DBHandler$DBHelper;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 200
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    sget v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f:I

    .line 202
    sget-object v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db open : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->c:Lcom/samsung/android/sdk/smp/storage/DBHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 205
    :try_start_1
    new-instance v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->c:Lcom/samsung/android/sdk/smp/storage/DBHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 207
    :try_start_2
    sget v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f:I

    .line 208
    sget-object v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db open fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    monitor-exit v1

    return-object v0

    .line 212
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->c:Lcom/samsung/android/sdk/smp/storage/DBHandler;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 213
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private declared-synchronized a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 1205
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 1207
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1211
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1212
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "["

    .line 1214
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "["

    .line 1215
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1217
    new-instance v0, Lorg/json/JSONArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception p1

    .line 1219
    :try_start_2
    sget-object p2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x0

    .line 1220
    monitor-exit p0

    return-object p1

    .line 1208
    :cond_2
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1204
    monitor-exit p0

    throw p1

    .line 1206
    :cond_3
    :goto_1
    monitor-exit p0

    return-object p2
.end method

.method private declared-synchronized d(I)I
    .locals 1

    monitor-enter p0

    .line 495
    :try_start_0
    rem-int/lit16 p1, p1, 0x3e8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, 0x895440

    add-int/2addr p1, v0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 493
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d(J)V
    .locals 6

    monitor-enter p0

    .line 993
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ack"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 995
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] fail to delete ack data. database delete exception. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    :goto_0
    monitor-exit p0

    return-void

    .line 992
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method static synthetic r()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized s()I
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SELECT COUNT (*) FROM start"

    .line 1117
    iget-object v3, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1118
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1119
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 1124
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1119
    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    if-eqz v2, :cond_2

    .line 1124
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 1121
    :goto_0
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error while handling app start. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    .line 1124
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1127
    :cond_2
    :goto_1
    monitor-exit p0

    return v0

    :goto_2
    if-eqz v1, :cond_3

    .line 1124
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_3
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1113
    :goto_4
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized t()I
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1228
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "session"

    const-string v4, "count"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 1229
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1230
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    .line 1236
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v10, v1

    move v1, v0

    move-object v0, v2

    move-object v2, v10

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 1233
    :goto_1
    :try_start_3
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error while handling session. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 1236
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    move v0, v1

    .line 1238
    :cond_2
    :goto_2
    monitor-exit p0

    return v0

    :goto_3
    if-eqz v0, :cond_3

    .line 1236
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_4
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1224
    :goto_5
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(J)I
    .locals 9

    monitor-enter p0

    const-wide/32 v0, 0x36ee80

    const/4 v2, 0x0

    .line 580
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT (*) FROM card WHERE mdt>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long/2addr v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "msgtype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "!=\'test\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " NOT LIKE \'%_test\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 584
    iget-object v4, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 585
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    sget-object v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " marketings displayed in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v6, p1, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " hours"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 593
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 587
    :cond_0
    monitor-exit p0

    return v2

    :cond_1
    if-eqz v3, :cond_2

    .line 593
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

    .line 590
    :goto_0
    :try_start_4
    sget-object v4, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to count marketings displayed in "

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

    invoke-static {v4, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 593
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    :goto_1
    const/4 p1, -0x1

    .line 596
    monitor-exit p0

    return p1

    :goto_2
    if-eqz v2, :cond_3

    .line 593
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

    .line 577
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    .line 257
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 258
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mid"

    .line 259
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "msgtype"

    .line 260
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "data"

    .line 261
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "state"

    .line 262
    sget-object p3, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "fail"

    const/4 p3, 0x0

    .line 263
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "mrt"

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "card"

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long p2, p2, v2

    if-nez p2, :cond_0

    .line 268
    sget-object p2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    const-string p3, "db error. fail to insert marketing"

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    monitor-exit p0

    return v1

    .line 271
    :cond_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f(Ljava/lang/String;)I

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p2

    :catch_0
    move-exception p2

    .line 273
    :try_start_3
    sget-object p3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db error. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 256
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;JLjava/lang/String;)J
    .locals 2

    monitor-enter p0

    .line 951
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "rid"

    .line 952
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ts"

    .line 953
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "fail"

    const/4 p2, 0x0

    .line 954
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "type"

    if-nez p4, :cond_0

    const-string p4, ""

    .line 955
    :cond_0
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "ack"

    const/4 p3, 0x0

    const/4 p4, 0x4

    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    :catch_0
    move-exception p1

    .line 959
    :try_start_2
    sget-object p2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "fail to add ack. database insert exception."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 p1, -0x1

    .line 961
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 950
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/samsung/android/sdk/smp/marketing/MarketingState;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingState;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 634
    :try_start_0
    sget-object p1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    const-string v1, "fail to get marketing list. state null"

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 638
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "card"

    const-string v4, "mid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "state=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 642
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v11, 0x0

    aput-object p1, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 641
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 644
    :goto_0
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 645
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 653
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 647
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

    .line 649
    :goto_1
    :try_start_5
    sget-object v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get marketing list. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p1, :cond_3

    .line 653
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 650
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception v0

    :goto_2
    if-eqz p1, :cond_4

    .line 653
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 632
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public a()V
    .locals 5

    .line 217
    sget-object v0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    sget v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_2

    .line 220
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->e:Lcom/samsung/android/sdk/smp/storage/DBHandler$DBHelper;

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->e:Lcom/samsung/android/sdk/smp/storage/DBHandler$DBHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler$DBHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 226
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 228
    iput-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 229
    iput-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->e:Lcom/samsung/android/sdk/smp/storage/DBHandler$DBHelper;

    .line 230
    sput-object v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->c:Lcom/samsung/android/sdk/smp/storage/DBHandler;

    const/4 v1, 0x0

    .line 231
    sput v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f:I

    .line 233
    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db close : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized a(I)V
    .locals 5

    monitor-enter p0

    .line 966
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ack"

    const-string v2, "fail>?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 968
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete max ack retry. database delete exception. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 970
    :goto_0
    monitor-exit p0

    return-void

    .line 965
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/data/AckData;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 973
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/smp/data/AckData;

    .line 974
    iget-wide v0, v0, Lcom/samsung/android/sdk/smp/data/AckData;->a:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 976
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 972
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;)V
    .locals 3

    monitor-enter p0

    .line 1084
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "start"

    .line 1085
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fail"

    const/4 v1, 0x0

    .line 1086
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1088
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "start"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1090
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while handling app start. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1092
    :goto_0
    monitor-exit p0

    return-void

    .line 1083
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 12

    monitor-enter p0

    .line 239
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 242
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

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

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 249
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 244
    :cond_0
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

    .line 246
    :goto_0
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_2

    .line 249
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 253
    :cond_2
    :goto_2
    monitor-exit p0

    return v1

    :catchall_2
    move-exception p1

    .line 238
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;I)Z
    .locals 7

    monitor-enter p0

    .line 296
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 298
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "fail"

    .line 299
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "card"

    const-string v3, "mid = ?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 301
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 300
    invoke-virtual {p2, v2, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 302
    :cond_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception p2

    .line 304
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 295
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;J)Z
    .locals 6

    monitor-enter p0

    .line 311
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 313
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mrt"

    .line 314
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 315
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "card"

    const-string v2, "mid = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 316
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 315
    invoke-virtual {p2, p3, v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 317
    :cond_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception p2

    .line 319
    :try_start_2
    sget-object p3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db error. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 310
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)Z
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 790
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 791
    sget-object p2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error while adding feedback. "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not exists."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    monitor-exit p0

    return v0

    .line 796
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 798
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 799
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "fbid"

    .line 800
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->value()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "dts"

    .line 801
    invoke-virtual {v5, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p3, :cond_3

    const-string v6, "detail"

    .line 803
    invoke-virtual {v5, v6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    if-eqz v1, :cond_4

    .line 805
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->l(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    goto :goto_1

    :cond_4
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    .line 806
    :goto_1
    invoke-virtual {p3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 808
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "mid"

    .line 809
    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    sget-object v6, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {v6, p2}, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "lfbid"

    .line 811
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->value()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    const-string p2, "lts"

    .line 813
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "feedbacks"

    .line 814
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "state"

    const-string p3, "wait"

    .line 815
    invoke-virtual {v5, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_7

    .line 818
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "feedback"

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    const-wide/16 v3, -0x1

    cmp-long p2, p2, v3

    if-nez p2, :cond_6

    .line 820
    sget-object p2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    const-string p3, "error while handling feedback. insert fail"

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    monitor-exit p0

    return v0

    .line 832
    :cond_6
    monitor-exit p0

    return v2

    .line 824
    :cond_7
    :try_start_2
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "feedback"

    const-string v1, "mid = ?"

    new-array v3, v2, [Ljava/lang/String;

    .line 825
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 824
    invoke-virtual {p2, p3, v5, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    .line 826
    :cond_8
    monitor-exit p0

    return v0

    :catch_0
    move-exception p2

    .line 829
    :try_start_3
    sget-object p3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while handling feedback. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 830
    monitor-exit p0

    return v0

    .line 786
    :cond_9
    :goto_2
    :try_start_4
    sget-object p2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    const-string p3, "error while handling feedback. invalid params"

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 787
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 784
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingState;)Z
    .locals 7

    monitor-enter p0

    .line 280
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 283
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "state"

    .line 284
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "card"

    const-string v3, "mid = ?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 286
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 285
    invoke-virtual {p2, v2, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 287
    :cond_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception p2

    .line 289
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 279
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 678
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->i(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 679
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 681
    :try_start_1
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 683
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "extra"

    .line 684
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "card"

    const-string v4, "mid = ?"

    new-array v5, v2, [Ljava/lang/String;

    .line 686
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 685
    invoke-virtual {v1, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 687
    :cond_1
    monitor-exit p0

    return v0

    :catch_0
    move-exception p2

    .line 689
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to delete marketing extra. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 690
    monitor-exit p0

    return v0

    .line 693
    :cond_2
    monitor-exit p0

    return v2

    .line 674
    :cond_3
    :goto_0
    :try_start_3
    sget-object p2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    const-string v1, "fail to delete marketing extra. invalid params"

    invoke-static {p2, p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 675
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 672
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/MarketingState;
    .locals 11

    monitor-enter p0

    .line 395
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 398
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 400
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->fromString(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    .line 406
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 401
    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-eqz v2, :cond_3

    .line 406
    :goto_0
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 403
    :goto_1
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_3

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v2, :cond_2

    .line 406
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 410
    :cond_3
    :goto_3
    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception p1

    .line 394
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingState;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 414
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 417
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "card"

    const-string v4, "mid"

    const-string v5, "state"

    filled-new-array {v4, v5}, [Ljava/lang/String;

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

    .line 419
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 420
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 421
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 423
    invoke-static {v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->fromString(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 429
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

    .line 426
    :goto_1
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    .line 429
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 431
    :cond_2
    :goto_2
    monitor-exit p0

    return-object v0

    :goto_3
    if-eqz v1, :cond_3

    .line 429
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 413
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)Lorg/json/JSONArray;
    .locals 5

    monitor-enter p0

    .line 697
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 701
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT mid FROM card WHERE mct<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mct"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v3, 0x36ee80

    sub-long/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 704
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 705
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 706
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 707
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 708
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 716
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 711
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    .line 713
    :goto_1
    :try_start_4
    sget-object p1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to get direct mids. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    .line 716
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 718
    :cond_3
    monitor-exit p0

    return-object v0

    :goto_2
    if-eqz v1, :cond_4

    .line 716
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 696
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(I)V
    .locals 5

    monitor-enter p0

    .line 1141
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "start"

    const-string v2, "fail>=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1143
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete max ack retry. database delete exception. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1145
    :goto_0
    monitor-exit p0

    return-void

    .line 1140
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    .line 1295
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/DBHandler$PpmtDBHelper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler$PpmtDBHelper;-><init>(Lcom/samsung/android/sdk/smp/storage/DBHandler;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler$PpmtDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "ppmt.db"

    .line 1296
    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1297
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1299
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while migrating ppmt data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1301
    :goto_0
    monitor-exit p0

    return-void

    .line 1292
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    .line 1171
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "session"

    .line 1172
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "count"

    .line 1173
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "fail"

    const/4 p2, 0x0

    .line 1174
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1176
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "session"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1178
    :try_start_1
    sget-object p2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error while handling session. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1180
    :goto_0
    monitor-exit p0

    return-void

    .line 1170
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 902
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 903
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->l(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 904
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 905
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "[|]"

    const-string v2, ""

    .line 908
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 909
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 912
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "feedbacks"

    .line 913
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const-string v1, "[]"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_1

    const-string p2, "state"

    const-string v1, "wait"

    .line 915
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "state"

    const-string v1, "done"

    .line 917
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    :goto_0
    :try_start_2
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feedback"

    const-string v2, "mid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 922
    :try_start_3
    sget-object p2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error while handling feedback. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 925
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 901
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;J)Z
    .locals 6

    monitor-enter p0

    .line 326
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 328
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mdt"

    .line 329
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 330
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "card"

    const-string v2, "mid = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 331
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 330
    invoke-virtual {p2, p3, v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 332
    :cond_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception p2

    .line 334
    :try_start_2
    sget-object p3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db error. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 325
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->i(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 378
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_1
    :try_start_1
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string p3, "extra"

    .line 384
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object p3, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "card"

    const-string v2, "mid = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 386
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 385
    invoke-virtual {p3, v1, p2, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 387
    :cond_2
    monitor-exit p0

    return v0

    :catch_0
    move-exception p2

    .line 389
    :try_start_2
    sget-object p3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to update marketing extra. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    monitor-exit p0

    return v0

    .line 372
    :cond_3
    :goto_0
    :try_start_3
    sget-object p2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    const-string p3, "fail to update marketing extra. invalid params"

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 373
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 370
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    monitor-enter p0

    .line 435
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 438
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "card"

    const-string v0, "msgtype"

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

    .line 440
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    .line 447
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 441
    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-eqz v2, :cond_4

    .line 447
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

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

    .line 443
    :goto_0
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    .line 447
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 444
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_3

    .line 447
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 451
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception p1

    .line 434
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Ljava/util/ArrayList;
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

    .line 600
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 603
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 604
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 605
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 611
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

    .line 608
    :goto_1
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_1

    .line 611
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 614
    :cond_1
    :goto_2
    monitor-exit p0

    return-object v0

    :goto_3
    if-eqz v1, :cond_2

    .line 611
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 599
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(J)Lorg/json/JSONArray;
    .locals 5

    monitor-enter p0

    .line 722
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 726
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT mid FROM card WHERE mct IS NULL AND mdt<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mdt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v3, 0x5265c00

    sub-long/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 730
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 731
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 732
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 733
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 742
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 737
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    .line 739
    :goto_1
    :try_start_4
    sget-object p1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to get indirect mids. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    .line 742
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 744
    :cond_3
    monitor-exit p0

    return-object v0

    :goto_2
    if-eqz v1, :cond_4

    .line 742
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 721
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(I)V
    .locals 5

    monitor-enter p0

    .line 1252
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "session"

    const-string v2, "fail>=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1254
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete max ack retry. database delete exception. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1256
    :goto_0
    monitor-exit p0

    return-void

    .line 1251
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1010
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "key"

    .line 1011
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 1012
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "appfilter"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1015
    :try_start_1
    sget-object p2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set app filter error. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    :goto_0
    monitor-exit p0

    return-void

    .line 1009
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;J)Z
    .locals 6

    monitor-enter p0

    .line 341
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 343
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "expdt"

    .line 344
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 345
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "card"

    const-string v2, "mid = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 346
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 345
    invoke-virtual {p2, p3, v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 347
    :cond_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception p2

    .line 349
    :try_start_2
    sget-object p3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db error. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 340
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;)I
    .locals 12

    monitor-enter p0

    .line 455
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 458
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "card"

    const-string v3, "fail"

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

    .line 460
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 467
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 461
    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    if-eqz v1, :cond_3

    .line 467
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 464
    :goto_0
    :try_start_5
    sget-object v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    .line 467
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_3
    :goto_2
    const/4 p1, -0x1

    .line 471
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    .line 454
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d()J
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "card"

    const-string v3, "mid"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "state=? OR state=? OR state=? OR state=?"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    .line 621
    invoke-virtual {v7}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_API:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 620
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 622
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v2, v0

    if-eqz v1, :cond_0

    .line 627
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 622
    :cond_0
    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_0

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    :goto_0
    if-eqz v0, :cond_1

    .line 627
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    :catch_1
    nop

    :goto_1
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 617
    monitor-exit p0

    throw v0

    .line 624
    :cond_2
    :goto_2
    monitor-exit p0

    return-wide v1
.end method

.method public declared-synchronized d(Ljava/lang/String;J)Z
    .locals 6

    monitor-enter p0

    .line 356
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 358
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mct"

    .line 359
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "card"

    const-string v2, "mid = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 361
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 360
    invoke-virtual {p2, p3, v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 362
    :cond_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception p2

    .line 364
    :try_start_2
    sget-object p3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db error. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 355
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    monitor-enter p0

    .line 475
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 478
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 480
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 481
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    .line 486
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 481
    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-eqz v2, :cond_3

    .line 486
    :goto_0
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 483
    :goto_1
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_3

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v2, :cond_2

    .line 486
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 490
    :cond_3
    :goto_3
    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception p1

    .line 474
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 876
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 879
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT mid,feedbacks FROM feedback WHERE state=\'wait\' AND lts>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x19bfcc00

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "feedbacks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "!=\'[]\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 883
    iget-object v3, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 884
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 885
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 886
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 887
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 888
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 896
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 891
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 893
    :goto_1
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error while handling feedback. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    .line 896
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 898
    :cond_3
    monitor-exit p0

    return-object v0

    :goto_2
    if-eqz v1, :cond_4

    .line 896
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 875
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Ljava/lang/String;)I
    .locals 12

    monitor-enter p0

    .line 499
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 502
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "card"

    const-string v3, "_id"

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

    .line 504
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d(I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 511
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 505
    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    if-eqz v1, :cond_3

    .line 511
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 508
    :goto_0
    :try_start_5
    sget-object v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    .line 511
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_3
    :goto_2
    const/4 p1, -0x1

    .line 515
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    .line 498
    monitor-exit p0

    throw p1
.end method

.method public f()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/data/AckData;",
            ">;"
        }
    .end annotation

    .line 929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 932
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ack"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    .line 934
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v1, "rid"

    .line 935
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "ts"

    .line 936
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v1, "fail"

    .line 937
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v1, "type"

    .line 938
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 939
    new-instance v1, Lcom/samsung/android/sdk/smp/data/AckData;

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/sdk/smp/data/AckData;-><init>(JLjava/lang/String;JJLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 945
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 942
    :goto_2
    :try_start_2
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get ack error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    return-object v0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_2

    .line 945
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public declared-synchronized g(Ljava/lang/String;)J
    .locals 12

    monitor-enter p0

    .line 519
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 522
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "card"

    const-string v3, "mrt"

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

    .line 524
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 530
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 525
    :cond_0
    monitor-exit p0

    return-wide v2

    :cond_1
    if-eqz v1, :cond_3

    .line 530
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 527
    :goto_0
    :try_start_5
    sget-object v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    .line 530
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_3
    :goto_2
    const-wide/16 v0, -0x1

    .line 534
    monitor-exit p0

    return-wide v0

    :catchall_2
    move-exception p1

    .line 518
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g()V
    .locals 10

    monitor-enter p0

    .line 979
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/smp/data/AckData;

    .line 982
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "fail"

    .line 983
    iget-wide v4, v1, Lcom/samsung/android/sdk/smp/data/AckData;->d:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 984
    iget-object v3, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ack"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, v1, Lcom/samsung/android/sdk/smp/data/AckData;->a:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 987
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to update ack retry count. database update exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 989
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 978
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h(Ljava/lang/String;)J
    .locals 12

    monitor-enter p0

    .line 538
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 541
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "card"

    const-string v3, "expdt"

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

    .line 543
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 549
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 544
    :cond_0
    monitor-exit p0

    return-wide v2

    :cond_1
    if-eqz v1, :cond_3

    .line 549
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 546
    :goto_0
    :try_start_5
    sget-object v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    .line 549
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_3
    :goto_2
    const-wide/16 v0, -0x1

    .line 553
    monitor-exit p0

    return-wide v0

    :catchall_2
    move-exception p1

    .line 537
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1036
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 1039
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "appfilter"

    const-string v4, "key"

    const-string v5, "value"

    filled-new-array {v4, v5}, [Ljava/lang/String;

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
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1040
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "key"

    .line 1041
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    .line 1042
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1043
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 1049
    :goto_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 1046
    :goto_2
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get app filter error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1051
    :cond_1
    :goto_3
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_2

    .line 1049
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 1035
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 563
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 570
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 564
    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    if-eqz v1, :cond_4

    .line 570
    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catch_0
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 567
    :goto_2
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to get marketing extra. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_4

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v1, :cond_3

    .line 570
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_5

    :cond_3
    :goto_4
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 556
    :goto_5
    monitor-exit p0

    throw p1

    .line 574
    :cond_4
    :goto_6
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized i()V
    .locals 4

    monitor-enter p0

    .line 1073
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "value"

    const-string v2, ""

    .line 1074
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "appfilter"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1077
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear all app filter error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1079
    :goto_0
    monitor-exit p0

    return-void

    .line 1072
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Lorg/json/JSONArray;
    .locals 11

    monitor-enter p0

    .line 1095
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 1099
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "start"

    const-string v4, "start"

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
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1100
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    new-instance v1, Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 1108
    :goto_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 1105
    :goto_2
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error while handling app start. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1110
    :cond_1
    :goto_3
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_2

    .line 1108
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 1094
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j(Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    .line 659
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 661
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "card"

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 662
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 661
    invoke-virtual {v0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 663
    :cond_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    .line 665
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 666
    monitor-exit p0

    return v1

    .line 669
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 658
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;
    .locals 11

    monitor-enter p0

    .line 749
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 752
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 754
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 755
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->fromInt(I)Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    .line 760
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 755
    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-eqz v2, :cond_3

    .line 760
    :goto_0
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 757
    :goto_1
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error while handling feedback. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_3

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v2, :cond_2

    .line 760
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 763
    :cond_3
    :goto_3
    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception p1

    .line 748
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "UPDATE start SET fail=fail+1"

    .line 1133
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1135
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while handling app start. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1137
    :goto_0
    monitor-exit p0

    return-void

    .line 1131
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 12

    monitor-enter p0

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "feedback"

    const-string v3, "feedbacks"

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 841
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 842
    new-instance v0, Lorg/json/JSONArray;

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 848
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 842
    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-eqz v1, :cond_3

    .line 848
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 845
    :goto_0
    :try_start_4
    sget-object v2, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error while handling feedback. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_3

    .line 848
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1

    .line 852
    :cond_3
    :goto_2
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-object p1

    :catchall_2
    move-exception p1

    .line 835
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized l()V
    .locals 4

    monitor-enter p0

    .line 1149
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->s()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const-string v0, "DELETE FROM start WHERE _id IN (SELECT _id FROM start ORDER BY _id DESC LIMIT -1 OFFSET 100)"

    .line 1153
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1156
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while handling app start. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1158
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1148
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 859
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "feedback"

    const-string v3, "state"

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 868
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 862
    :cond_0
    monitor-exit p0

    return-object v2

    :cond_1
    if-eqz v1, :cond_3

    .line 868
    :goto_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 865
    :goto_1
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error while handling feedback. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v1, :cond_2

    .line 868
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_3
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 855
    :goto_4
    monitor-exit p0

    throw p1

    .line 872
    :cond_3
    :goto_5
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized m()V
    .locals 4

    monitor-enter p0

    .line 1162
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "start"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1164
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while handling app start. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1166
    :goto_0
    monitor-exit p0

    return-void

    .line 1161
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()Lorg/json/JSONArray;
    .locals 11

    monitor-enter p0

    .line 1183
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 1187
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "session"

    const-string v4, "session"

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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1188
    :catch_0
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 1190
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1191
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 1199
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v2

    .line 1196
    :goto_1
    :try_start_5
    sget-object v3, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error while handling session. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    .line 1199
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1201
    :cond_1
    :goto_2
    monitor-exit p0

    return-object v0

    :goto_3
    if-eqz v1, :cond_2

    .line 1199
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 1182
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "UPDATE session SET fail=fail+1"

    .line 1244
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1246
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while handling session. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1248
    :goto_0
    monitor-exit p0

    return-void

    .line 1242
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p()V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    .line 1261
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->t()I

    move-result v1

    .line 1263
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "session"

    const-string v4, "count"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id asc"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x1f4

    if-le v1, v4, :cond_0

    .line 1265
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 1267
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sub-int/2addr v1, v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    if-lez v3, :cond_1

    .line 1271
    sget-object v0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "over max count of sessions. "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " row(s) will be deleted"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM session WHERE _id IN (SELECT _id FROM session ORDER BY _id ASC LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1274
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    if-eqz v2, :cond_2

    .line 1280
    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 1277
    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error while handling session. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_1

    .line 1282
    :cond_2
    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_3

    .line 1280
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_3
    :goto_5
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1258
    :goto_6
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized q()V
    .locals 4

    monitor-enter p0

    .line 1286
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "session"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1288
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while handling session. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1290
    :goto_0
    monitor-exit p0

    return-void

    .line 1285
    :goto_1
    monitor-exit p0

    throw v0
.end method
