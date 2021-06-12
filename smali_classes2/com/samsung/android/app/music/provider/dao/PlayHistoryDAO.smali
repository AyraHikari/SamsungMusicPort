.class public Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$PlayHistoryDetailColumns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO<",
        "Lcom/samsung/android/app/music/model/playhistory/PlayHistory;",
        ">;",
        "Lcom/samsung/android/app/music/provider/StoreProviderColumns$PlayHistoryDetailColumns;"
    }
.end annotation


# static fields
.field private static b:Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    const-string v0, "com.sec.android.app.music"

    const-string v1, "milk/play_history"

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e()Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;
    .locals 2

    .line 28
    const-class v0, Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;->b:Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;

    invoke-direct {v1}, Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;-><init>()V

    sput-object v1, Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;->b:Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;

    .line 32
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;->b:Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "playhistory_detail"

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "PlayHistoryDAO"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTable. old - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x51a8

    if-ge p2, p3, :cond_0

    const/4 p2, 0x1

    .line 76
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    const-string p1, "PlayHistoryDAO"

    const-string p2, "updateTable. create new table."

    .line 77
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const-string p2, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 40
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "playhistory_detail"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "history_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "track_title"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "date"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "date_local"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "device_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " )"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
    .locals 2

    const/4 p1, 0x1

    .line 104
    new-array p1, p1, [Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PlayHistory;->a()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    return-object p1
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
