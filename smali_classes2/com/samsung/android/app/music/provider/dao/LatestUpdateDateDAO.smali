.class public Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$LatestUpdateDateColumns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO<",
        "Lcom/samsung/android/app/music/model/ResponseModel;",
        ">;",
        "Lcom/samsung/android/app/music/provider/StoreProviderColumns$LatestUpdateDateColumns;"
    }
.end annotation


# static fields
.field private static b:Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    const-string v0, "com.sec.android.app.music"

    const-string v1, "milk/latest_update_date"

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO$1;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 160
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "server_path"

    .line 161
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "latest_update_date"

    .line 162
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$LatestUpdateDate;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string p0, "LatestUpdateDateDAO"

    const-string p1, "saveLatestUpdateDate"

    .line 165
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e()Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;
    .locals 2

    .line 35
    const-class v0, Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;->b:Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;

    invoke-direct {v1}, Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;-><init>()V

    sput-object v1, Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;->b:Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;

    .line 39
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;->b:Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "latest_update_date_map"

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "LatestUpdateDateDAO"

    .line 78
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

    const/16 p3, 0x51b3

    if-ge p2, p3, :cond_0

    const/4 p2, 0x1

    .line 81
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    const-string p1, "LatestUpdateDateDAO"

    const-string p2, "updateTable. create new table."

    .line 82
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 88
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

    .line 47
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "latest_update_date_map"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "server_path"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "latest_update_date"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " UNIQUE("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "server_path"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") ON CONFLICT REPLACE"

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

    .line 110
    new-array p1, p1, [Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$LatestUpdateDate;->a()Landroid/net/Uri;

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

    const/4 v0, 0x0

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
