.class public abstract Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BaseDAO"

    .line 22
    iput-object v0, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->a:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized e()Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;
    .locals 2

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->b:Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;

    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->a()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/DaoMaster;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->b:Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->b:Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 182
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 889
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->DELETE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->a(Ljava/lang/String;[Ljava/lang/String;[Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;[Landroid/net/Uri;)I
    .locals 3

    .line 893
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 899
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->a()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 901
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_1

    .line 904
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->a([Landroid/net/Uri;)V

    :cond_1
    return p1
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2

    .line 1241
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetDatabase : resetLevel - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1244
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->c()I

    :goto_0
    return-void
.end method

.method public abstract a(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public abstract a(Landroid/database/sqlite/SQLiteDatabase;Z)V
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1273
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->e()Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected a([Landroid/net/Uri;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1254
    array-length v0, p1

    if-lez v0, :cond_0

    .line 1255
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1256
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->e()Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->a(Landroid/net/Uri;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract a(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
.end method

.method public abstract b(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "IF EXISTS "

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 100
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public abstract b()Z
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    .line 914
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract c(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract d()Ljava/lang/String;
.end method
