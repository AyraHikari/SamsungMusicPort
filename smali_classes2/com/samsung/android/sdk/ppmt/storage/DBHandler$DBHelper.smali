.class Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBHelper"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ppmt/storage/DBHandler;Landroid/content/Context;)V
    .locals 2

    .line 208
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;->a:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    const-string p1, "ppmt.db"

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 209
    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 214
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Create Tables"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS card (_id INTEGER PRIMARY KEY AUTOINCREMENT, mid TEXT NOT NULL UNIQUE,tid TEXT, mtype TEXT, data TEXT, state TEXT, rc INTEGER, extra TEXT, mrt INTEGER, mdt INTEGER, expdt INTEGER  );"

    .line 216
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS feedback (_id INTEGER PRIMARY KEY AUTOINCREMENT, mid TEXT NOT NULL UNIQUE CONSTRAINT fk_cardtable_mid REFERENCES card(mid) ON DELETE CASCADE,lfbid INTEGER NOT NULL,lts INTEGER NOT NULL,fbid TEXT NOT NULL,fv TEXT NOT NULL,ts TEXT NOT NULL,state TEXT NOT NULL, try INTEGER NOT NULL );"

    .line 217
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS trigger_delete_fb BEFORE DELETE ON card FOR EACH ROW BEGIN  DELETE FROM feedback WHERE feedback.mid= OLD.mid; END"

    .line 218
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS update_data (key TEXT NOT NULL, value TEXT, type TEXT NOT NULL, send_done INTEGER NOT NULL DEFAULT 0, UNIQUE (key, type) ON CONFLICT REPLACE );"

    .line 219
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS cumulative_data (_id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,type TEXT NOT NULL, data TEXT);"

    .line 220
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS cumulative_data_reg (_id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,type TEXT NOT NULL, data TEXT);"

    .line 221
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS temp_data (key TEXT NOT NULL UNIQUE, data TEXT);"

    .line 222
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 224
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception onCreate DB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    :try_start_0
    const-string p2, "CREATE TABLE IF NOT EXISTS temp_data (key TEXT NOT NULL UNIQUE, data TEXT);"

    .line 232
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 234
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->n()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception onCreate DB : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
