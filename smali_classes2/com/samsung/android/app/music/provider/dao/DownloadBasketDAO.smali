.class public Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAOAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$DownloadBasketColumns;


# static fields
.field private static final b:Ljava/lang/String; = "DownloadBasketDAO"

.field private static volatile c:Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAOAdapter;-><init>()V

    return-void
.end method

.method public static e()Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;
    .locals 2

    .line 15
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;->c:Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;

    if-nez v0, :cond_1

    .line 16
    const-class v0, Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;->c:Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;

    invoke-direct {v1}, Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;-><init>()V

    sput-object v1, Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;->c:Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;->c:Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "download_basket"

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    :goto_0
    if-gt p2, p3, :cond_2

    const/16 v1, 0x4ee8

    if-eq p2, v1, :cond_1

    const/16 v1, 0x4eec

    if-eq p2, v1, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;->b(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const-string p2, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 29
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "download_basket"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "audio_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER NOT NULL, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "track_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT NOT NULL, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "track_number"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "codec"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "bitrate"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "status_code"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "expire_time"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "payment_price"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " UNIQUE("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "track_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") ON CONFLICT IGNORE"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
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
