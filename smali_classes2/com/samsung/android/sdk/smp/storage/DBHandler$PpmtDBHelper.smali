.class Lcom/samsung/android/sdk/smp/storage/DBHandler$PpmtDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/storage/DBHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PpmtDBHelper"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/smp/storage/DBHandler;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/smp/storage/DBHandler;Landroid/content/Context;)V
    .locals 2

    .line 1306
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler$PpmtDBHelper;->a:Lcom/samsung/android/sdk/smp/storage/DBHandler;

    const-string p1, "ppmt.db"

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1307
    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1308
    iput-object p2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler$PpmtDBHelper;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9

    .line 1317
    invoke-static {}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->r()Ljava/lang/String;

    move-result-object p2

    const-string p3, "migrate ppmt data"

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1322
    :try_start_0
    iget-object p3, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler$PpmtDBHelper;->b:Landroid/content/Context;

    if-eqz p3, :cond_2

    const-string v1, "update_data"

    const-string p3, "key"

    const-string v0, "value"

    .line 1323
    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "type=?"

    const-string p3, "cs"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1325
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler$PpmtDBHelper;->b:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/smp/common/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1326
    iget-object p3, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler$PpmtDBHelper;->b:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/sdk/smp/common/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1328
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bAgreement"

    .line 1329
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1330
    new-instance p2, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler$PpmtDBHelper;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    const-string v0, "true"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Z)V

    goto :goto_0

    .line 1332
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/DBHandler$PpmtDBHelper;->a:Lcom/samsung/android/sdk/smp/storage/DBHandler;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_2
    move-object p1, p2

    :cond_3
    if-eqz p1, :cond_4

    .line 1341
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    .line 1338
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->r()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    return-void

    :catchall_1
    move-exception p2

    :goto_4
    if-eqz p1, :cond_5

    .line 1341
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p2
.end method
