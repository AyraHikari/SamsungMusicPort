.class public Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAOAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$ThumbnailColumns;


# static fields
.field private static b:Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAOAdapter;-><init>()V

    return-void
.end method

.method public static e()Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->b:Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->b:Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    .line 26
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->b:Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "milk_etc_thumbnails"

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 169
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAOAdapter;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->c()I

    :goto_0
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    :goto_0
    if-gt p2, p3, :cond_1

    const/16 v1, 0x4ee8

    if-eq p2, v1, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

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

    .line 33
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "milk_etc_thumbnails"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "thumbnail_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "thumbnail_type"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "image_url"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " UNIQUE("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "thumbnail_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "thumbnail_type"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") ON CONFLICT IGNORE"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ) "

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
