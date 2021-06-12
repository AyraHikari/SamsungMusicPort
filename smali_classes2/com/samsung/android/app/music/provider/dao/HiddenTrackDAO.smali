.class public Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAOAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$MilkTrackBaseColumns;


# static fields
.field private static b:Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAOAdapter;-><init>()V

    const-string v0, "com.sec.android.app.music"

    const-string v1, "milk/hidden_track"

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e()Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;
    .locals 2

    .line 23
    const-class v0, Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;->b:Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;

    invoke-direct {v1}, Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;-><init>()V

    sput-object v1, Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;->b:Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;

    .line 27
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;->b:Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "hidden_track"

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
    if-gt p2, p3, :cond_1

    const/16 v1, 0x51b4

    if-eq p2, v1, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const-string p2, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 35
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "hidden_track"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "audio_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER NOT NULL,"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "track_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT,"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " UNIQUE("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "track_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ) ON CONFLICT REPLACE"

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

    .line 93
    new-array p1, p1, [Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$HiddenTrack;->a()Landroid/net/Uri;

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
