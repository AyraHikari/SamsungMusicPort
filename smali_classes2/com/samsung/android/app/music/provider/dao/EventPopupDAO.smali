.class public Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO<",
        "Lcom/samsung/android/app/music/model/milkevent/EventPopup;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;

.field private static final c:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;->b:Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;

    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$EventPopups;->b()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;->c:[Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    const-string v0, "com.sec.android.app.music"

    .line 28
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$EventPopups;->a()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e()Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;
    .locals 1

    .line 21
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;->b:Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "event_popups"

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

    const/16 v1, 0x4ee8

    if-eq p2, v1, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2

    const-string v0, "EventPopupDao"

    const-string v1, "createTable"

    .line 33
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 37
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "event_popups"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "popup_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "do_not_show_time"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " LONG, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "UNIQUE ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "popup_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ON CONFLICT IGNORE"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
    .locals 0

    .line 98
    sget-object p1, Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;->c:[Landroid/net/Uri;

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
