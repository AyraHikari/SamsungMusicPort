.class public final Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/BackupDatabaseHelper$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/BackupDatabaseHelper$Companion;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;->a:Lcom/samsung/android/app/music/provider/BackupDatabaseHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backup.db"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1516
    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1519
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p3, 0x1

    if-ge p2, p3, :cond_0

    const-string p2, "hearts_backup"

    const-string p3, "category_type INTEGER, category_id TEXT, favorite_name TEXT, data1 INTEGER DEFAULT 0, data2 INTEGER DEFAULT 0, display_order INTEGER DEFAULT 0, cp_attrs INTEGER NOT NULL, server_category_id TEXT, sub_category_type INTEGER DEFAULT 0, modified_state INTEGER DEFAULT 0, category_id_extra_album_artist TEXT, category_id_extra_bucket_id TEXT"

    .line 1561
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "audio_playlists_backup"

    const-string p3, "_id INTEGER PRIMARY KEY, name TEXT NOT NULL, date_added INTEGER DEFAULT 0, date_synced INTEGER DEFAULT 0, date_modified INTEGER DEFAULT 0, modified_state INTEGER DEFAULT 0, is_sync INTEGER DEFAULT 0, sort_by INTEGER DEFAULT -1, display_order INTEGER DEFAULT 0, date_recently_played INTEGER DEFAULT 0"

    .line 1567
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "audio_playlists_map_backup"

    const-string p3, "audio_id INTEGER NOT NULL, playlist_id INTEGER NOT NULL, play_order INTEGER NOT NULL, audio_source_id INTEGER DEFAULT 0, audio_data TEXT, audio_cp_attrs INTEGER, storage_order INTEGER DEFAULT 0, source_id INTEGER DEFAULT 0, source_artist_id INTEGER, source_album_id INTEGER, title TEXT, artist TEXT, album TEXT, album_artist TEXT, explicit INTEGER DEFAULT 0, drm_type INTEGER DEFAULT 0, duration INTEGER, cp_attrs INTEGER, local_track_id TEXT"

    .line 1573
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "favorite_tracks_info_backup"

    const-string p3, "sort_by INTEGER DEFAULT -1"

    .line 1579
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "favorite_tracks_map_backup"

    const-string p3, "audio_id INTEGER NOT NULL, play_order INTEGER NOT NULL, audio_source_id INTEGER DEFAULT 0, audio_data TEXT, audio_cp_attrs INTEGER, storage_order INTEGER DEFAULT 0, source_id INTEGER DEFAULT 0, source_artist_id INTEGER, source_album_id INTEGER, title TEXT, artist TEXT, album TEXT, album_artist TEXT, explicit INTEGER DEFAULT 0, drm_type INTEGER DEFAULT 0, duration INTEGER, cp_attrs INTEGER, local_track_id TEXT"

    .line 1585
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    const/4 v0, 0x0

    .line 1550
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 1552
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    const-string v3, "BackupProvider-BackupDatabaseHelper"

    .line 1554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BackupDatabaseHelper : getWritableDatabase failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BackupProvider-BackupDatabaseHelper"

    const-string v1, "onCreate"

    const/4 v2, 0x1

    .line 1523
    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1525
    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "BackupProvider-BackupDatabaseHelper"

    .line 1541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDowngrade : oldVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1544
    sget-boolean v0, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;->b:Z

    if-eqz v0, :cond_0

    .line 1545
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BackupProvider-BackupDatabaseHelper"

    .line 1534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade : oldVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    .line 1532
    invoke-static {v1, v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1537
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/app/music/provider/BackupDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
