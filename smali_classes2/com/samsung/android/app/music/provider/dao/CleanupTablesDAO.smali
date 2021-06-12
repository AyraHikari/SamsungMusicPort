.class public Lcom/samsung/android/app/music/provider/dao/CleanupTablesDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAOAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAOAdapter;-><init>()V

    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP VIEW IF EXISTS all_station_view;"

    .line 22
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS milk_track_list_view;"

    .line 23
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS category_genre_infos;"

    .line 24
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS mystation_view;"

    .line 25
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS radio_history_view;"

    .line 26
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS station_view;"

    .line 27
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS milkfavorite_album_list"

    .line 31
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS milkfavorite_artist_list"

    .line 32
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS milkfavorite"

    .line 33
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS milkfavorite_milkmagazine_list"

    .line 34
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS favorite_track_infos"

    .line 35
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS milkfavorite_track_list"

    .line 36
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS milk_genre"

    .line 37
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS milk_track_list"

    .line 38
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS category_genre"

    .line 39
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS category_genre_order"

    .line 40
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS category_period"

    .line 41
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS my_station"

    .line 42
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS radio_history"

    .line 43
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS milk_smart_station_seed"

    .line 44
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS station"

    .line 45
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS personal_station_seed"

    .line 46
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS radio_track"

    .line 47
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TRIGGER IF EXISTS tr_myStation_delete_station;"

    .line 52
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER IF EXISTS tr_delete_station"

    .line 53
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "CleanupTablesDAO"

    .line 12
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

    invoke-static {v0, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x52d2

    if-ge p2, p3, :cond_0

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/dao/CleanupTablesDAO;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/dao/CleanupTablesDAO;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/dao/CleanupTablesDAO;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

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
