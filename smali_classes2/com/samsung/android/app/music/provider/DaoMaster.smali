.class public Lcom/samsung/android/app/music/provider/DaoMaster;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;,
        Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "DaoMaster"

.field private static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static f:I

.field private static g:I

.field private static h:Lcom/samsung/android/app/music/provider/DaoMaster;


# instance fields
.field protected b:Landroid/database/sqlite/SQLiteDatabase;

.field protected c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 125
    sput-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->h:Lcom/samsung/android/app/music/provider/DaoMaster;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->e:Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/provider/DaoMaster;
    .locals 2

    .line 128
    const-class v0, Lcom/samsung/android/app/music/provider/DaoMaster;

    monitor-enter v0

    .line 129
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->h:Lcom/samsung/android/app/music/provider/DaoMaster;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Lcom/samsung/android/app/music/provider/DaoMaster;

    invoke-direct {v1}, Lcom/samsung/android/app/music/provider/DaoMaster;-><init>()V

    sput-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->h:Lcom/samsung/android/app/music/provider/DaoMaster;

    .line 132
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->h:Lcom/samsung/android/app/music/provider/DaoMaster;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 133
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 6

    .line 215
    sget v0, Lcom/samsung/android/app/music/provider/DaoMaster;->f:I

    :goto_0
    sget v1, Lcom/samsung/android/app/music/provider/DaoMaster;->g:I

    if-gt v0, v1, :cond_2

    .line 216
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 217
    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 218
    sget-object v3, Lcom/samsung/android/app/music/provider/DaoMaster;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAllTables : match index - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", dao - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->d()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->d()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 251
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 252
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->d()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8

    const-string v1, "sqlite_master"

    const-string v0, "count(*)"

    .line 342
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "tbl_name IN (?,?,?,?)"

    const-string v0, "milk_track"

    const-string v4, "download_basket"

    const-string v5, "voucher"

    const-string v6, "purchased_track"

    filled-new-array {v0, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 343
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    .line 347
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExistDaoTables : c "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 348
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 351
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/provider/DaoMaster;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExistDaoTables count "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 342
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p0, :cond_4

    if-eqz v0, :cond_3

    .line 351
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    throw v1
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 227
    sget v0, Lcom/samsung/android/app/music/provider/DaoMaster;->f:I

    :goto_0
    sget v1, Lcom/samsung/android/app/music/provider/DaoMaster;->g:I

    if-gt v0, v1, :cond_2

    .line 228
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 229
    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->b()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 230
    sget-object v3, Lcom/samsung/android/app/music/provider/DaoMaster;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAllViews : match index - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", dao - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->d()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->d()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 257
    sget-object p2, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 258
    invoke-virtual {p3}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->d()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 239
    sget v0, Lcom/samsung/android/app/music/provider/DaoMaster;->f:I

    :goto_0
    sget v1, Lcom/samsung/android/app/music/provider/DaoMaster;->g:I

    if-gt v0, v1, :cond_2

    .line 240
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 241
    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->c()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 242
    sget-object v3, Lcom/samsung/android/app/music/provider/DaoMaster;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAllTriggers : match index - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", dao - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->d()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->d()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 264
    sget-object p2, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 265
    invoke-virtual {p3}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->d()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->d()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP VIEW IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTables : drop view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " unused"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private e()V
    .locals 5

    .line 95
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/provider/dao/CleanupTablesDAO;

    invoke-direct {v1}, Lcom/samsung/android/app/music/provider/dao/CleanupTablesDAO;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkTrackDAO;->e()Lcom/samsung/android/app/music/provider/dao/MilkTrackDAO;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3, v3, v3}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/PurchasedTrackDAO;->e()Lcom/samsung/android/app/music/provider/dao/PurchasedTrackDAO;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v1, v3, v3, v3}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/VoucherDAO;->e()Lcom/samsung/android/app/music/provider/dao/VoucherDAO;

    move-result-object v1

    const/16 v4, 0xb

    invoke-static {v1, v4, v4, v4}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/SubscriptionDAO;->e()Lcom/samsung/android/app/music/provider/dao/SubscriptionDAO;

    move-result-object v1

    const/16 v4, 0xc

    invoke-static {v1, v4, v4, v4}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/DownloadQueueDAO;->e()Lcom/samsung/android/app/music/provider/dao/DownloadQueueDAO;

    move-result-object v1

    const/16 v4, 0xd

    invoke-static {v1, v4, v4, v4}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/ThumbnailDAO;->e()Lcom/samsung/android/app/music/provider/dao/ThumbnailDAO;

    move-result-object v1

    const/16 v4, 0xe

    invoke-static {v1, v4, v4, v4}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;->e()Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;

    move-result-object v1

    const/16 v4, 0x11

    invoke-static {v1, v4, v4, v4}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;->e()Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;

    move-result-object v1

    const/16 v4, 0x12

    invoke-static {v1, v4, v4, v4}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->e()Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    move-result-object v1

    const/16 v4, 0x18

    invoke-static {v1, v4, v4, v4}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/OnlineChartTrackDAO;->e()Lcom/samsung/android/app/music/provider/dao/OnlineChartTrackDAO;

    move-result-object v1

    const/16 v4, 0x1e

    invoke-static {v1, v4, v4, v4}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/PlayHistoryMapDAO;->e()Lcom/samsung/android/app/music/provider/dao/PlayHistoryMapDAO;

    move-result-object v1

    const/16 v4, 0x1f

    invoke-static {v1, v4, v4, v4}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;->e()Lcom/samsung/android/app/music/provider/dao/PlayHistoryDAO;

    move-result-object v1

    const/16 v4, 0x20

    invoke-static {v1, v4, v4, v4}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;->e()Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;

    move-result-object v1

    const/16 v4, 0x21

    invoke-static {v1, v4, v4, v4}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;->e()Lcom/samsung/android/app/music/provider/dao/HiddenTrackDAO;

    move-result-object v1

    const/16 v4, 0x22

    invoke-static {v1, v4, v4, v4}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sput v3, Lcom/samsung/android/app/music/provider/DaoMaster;->f:I

    .line 112
    sput v2, Lcom/samsung/android/app/music/provider/DaoMaster;->g:I

    .line 114
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 115
    sget v2, Lcom/samsung/android/app/music/provider/DaoMaster;->f:I

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 116
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a()I

    move-result v2

    sput v2, Lcom/samsung/android/app/music/provider/DaoMaster;->f:I

    .line 118
    :cond_1
    sget v2, Lcom/samsung/android/app/music/provider/DaoMaster;->g:I

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 119
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->a()I

    move-result v1

    sput v1, Lcom/samsung/android/app/music/provider/DaoMaster;->g:I

    goto :goto_0

    .line 122
    :cond_2
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init : min - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/app/music/provider/DaoMaster;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", max - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/app/music/provider/DaoMaster;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 205
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetDatabase : reset level - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 207
    sget-object v2, Lcom/samsung/android/app/music/provider/DaoMaster;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetDatabase  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->d()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reset level - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->d()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/DaoMaster;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 150
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDatabase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->c:Ljava/lang/ref/WeakReference;

    .line 152
    iput-object p2, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/DaoMaster;->e()V

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 278
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 279
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate : Creating tables for schema version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/DaoMaster;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 282
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 283
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 286
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 292
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade : Upgrading schema from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/DaoMaster;->b(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 295
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/DaoMaster;->d(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 296
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/DaoMaster;->c(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 298
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->e:Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;

    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->e:Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;->a(II)V

    :cond_0
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x5338

    return v0
.end method

.method public declared-synchronized d()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
