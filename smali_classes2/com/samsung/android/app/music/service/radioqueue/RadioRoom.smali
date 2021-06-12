.class public final Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;,
        Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;,
        Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$RadioDatabase;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "RadioRoom"

.field private static volatile b:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$RadioDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)I
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 281
    invoke-static {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->c(Landroid/content/Context;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->d()I

    move-result p0

    return p0
.end method

.method static a(Landroid/content/Context;II)I
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 350
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->c(Landroid/content/Context;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;

    move-result-object p0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    if-ge p1, p2, :cond_3

    .line 359
    invoke-interface {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->b()Ljava/util/List;

    move-result-object v3

    .line 360
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    .line 361
    iget v6, v5, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    if-ne v6, p1, :cond_2

    .line 362
    iput v2, v5, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    move-object v1, v5

    goto :goto_0

    .line 364
    :cond_2
    iget v6, v5, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    if-le v6, p1, :cond_1

    iget v6, v5, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    if-gt v6, p2, :cond_1

    .line 365
    iget v6, v5, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    goto :goto_0

    .line 369
    :cond_3
    invoke-interface {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->c()Ljava/util/List;

    move-result-object v3

    .line 370
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    .line 371
    iget v6, v5, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    if-ne v6, p1, :cond_5

    .line 373
    iput v2, v5, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    move-object v1, v5

    goto :goto_1

    .line 374
    :cond_5
    iget v6, v5, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    if-lt v6, p2, :cond_4

    iget v6, v5, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    if-ge v6, p1, :cond_4

    .line 375
    iget v6, v5, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    goto :goto_1

    .line 379
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->b([Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)V

    if-eqz v1, :cond_7

    .line 382
    iput p2, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    .line 383
    invoke-interface {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->b(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)I

    move-result v0

    :cond_7
    return v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;IJ)I
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 413
    invoke-static {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->c(Landroid/content/Context;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;

    move-result-object p0

    .line 414
    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "SMUSIC-SV-List"

    const-string p1, "updatePlayList. but deleted playlist."

    .line 416
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 419
    :cond_0
    iput p2, p1, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->i:I

    .line 420
    iput-wide p3, p1, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->j:J

    .line 421
    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->b(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)I

    move-result p0

    return p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "getPlayList but playlistId is null or empty !!"

    .line 233
    invoke-static {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 241
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->c(Landroid/content/Context;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;

    move-result-object p0

    if-eqz p2, :cond_2

    .line 243
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " FROM play_list WHERE play_list_id=\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' ORDER BY "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "item_order"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ASC"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 249
    new-instance p2, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    invoke-direct {p2, p1}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-interface {p0, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->a(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_1

    .line 244
    :cond_2
    :goto_0
    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static a(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 201
    invoke-static {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->c(Landroid/content/Context;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;

    move-result-object p0

    if-eqz p1, :cond_1

    .line 203
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " FROM play_list ORDER BY "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "item_order"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ASC"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    new-instance v0, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    invoke-direct {v0, p1}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-interface {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->a(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_1

    .line 204
    :cond_1
    :goto_0
    invoke-interface {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->a()Landroid/database/Cursor;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 440
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_1

    const-string v3, ","

    .line 442
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 162
    invoke-static {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->c(Landroid/content/Context;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;

    move-result-object p0

    .line 168
    invoke-interface {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->c()Ljava/util/List;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    .line 170
    iget v3, v2, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    goto :goto_0

    .line 172
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->b([Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)V

    .line 174
    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-List"

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 312
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->c(Landroid/content/Context;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;

    move-result-object p0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM play_list WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 314
    new-instance v1, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    invoke-direct {v1, p1, p2}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    invoke-interface {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->b(Landroid/arch/persistence/db/SupportSQLiteQuery;)[Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    move-result-object p1

    .line 316
    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->a([Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)I

    move-result p1

    .line 318
    invoke-interface {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->b()Ljava/util/List;

    move-result-object p2

    .line 320
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    .line 321
    iput v0, v2, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;->b([Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayList;)V

    return p1

    :cond_2
    :goto_1
    return v0
.end method

.method private static b(Landroid/content/Context;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$RadioDatabase;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 55
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->b:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$RadioDatabase;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->b:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$RadioDatabase;

    if-nez v1, :cond_0

    .line 58
    const-class v1, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$RadioDatabase;

    const-string v2, "play_list"

    invoke-static {p0, v1, v2}, Landroid/arch/persistence/room/Room;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/arch/persistence/room/migration/Migration;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations;->a:Landroid/arch/persistence/room/migration/Migration;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations;->b:Landroid/arch/persistence/room/migration/Migration;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations;->c:Landroid/arch/persistence/room/migration/Migration;

    aput-object v3, v1, v2

    .line 60
    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->a([Landroid/arch/persistence/room/migration/Migration;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->a()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$RadioDatabase;

    sput-object p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->b:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$RadioDatabase;

    .line 62
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 64
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->b:Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$RadioDatabase;

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;
    .locals 0

    .line 430
    invoke-static {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;->b(Landroid/content/Context;)Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$RadioDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$RadioDatabase;->a()Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;

    move-result-object p0

    return-object p0
.end method
