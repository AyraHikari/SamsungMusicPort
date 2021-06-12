.class Lcom/samsung/android/sdk/smp/storage/DBHandler$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/storage/DBHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBHelper"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/smp/storage/DBHandler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/smp/storage/DBHandler;Landroid/content/Context;)V
    .locals 2

    .line 170
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler$DBHelper;->a:Lcom/samsung/android/sdk/smp/storage/DBHandler;

    const-string p1, "smp.db"

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 171
    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/smp/storage/DBHandler;Landroid/content/Context;Lcom/samsung/android/sdk/smp/storage/DBHandler$1;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/DBHandler$DBHelper;-><init>(Lcom/samsung/android/sdk/smp/storage/DBHandler;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 176
    invoke-static {}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "create tables"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS card (_id INTEGER PRIMARY KEY AUTOINCREMENT, mid TEXT NOT NULL UNIQUE,msgtype TEXT,data TEXT,state TEXT NOT NULL,extra TEXT,mrt INTEGER NOT NULL,mdt INTEGER,mct INTEGER,expdt INTEGER,fail INTEGER NOT NULL );"

    .line 178
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS feedback (_id INTEGER PRIMARY KEY AUTOINCREMENT,mid TEXT NOT NULL UNIQUE CONSTRAINT fk_cardtable_mid REFERENCES card(mid) ON DELETE CASCADE,lfbid INTEGER NOT NULL,lts INTEGER NOT NULL,feedbacks TEXT NOT NULL,state TEXT NOT NULL );"

    .line 179
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS trigger_delete_fb BEFORE DELETE ON card FOR EACH ROW BEGIN  DELETE FROM feedback WHERE feedback.mid= OLD.mid; END"

    .line 180
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS ack (_id INTEGER PRIMARY KEY AUTOINCREMENT,rid TEXT NOT NULL UNIQUE,ts INTEGER NOT NULL,type TEXT NOT NULL,fail INTEGER NOT NULL );"

    .line 181
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS appfilter (_id INTEGER PRIMARY KEY AUTOINCREMENT,key TEXT NOT NULL UNIQUE,value TEXT );"

    .line 182
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS start (_id INTEGER PRIMARY KEY AUTOINCREMENT,start TEXT NOT NULL,fail INTEGER NOT NULL );"

    .line 183
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS session (_id INTEGER PRIMARY KEY AUTOINCREMENT,session TEXT NOT NULL,count INTEGER NOT NULL,fail INTEGER NOT NULL );"

    .line 184
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 186
    invoke-static {}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->r()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create db fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
