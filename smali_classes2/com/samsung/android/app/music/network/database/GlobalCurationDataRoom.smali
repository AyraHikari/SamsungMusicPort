.class public Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDao;,
        Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationData;,
        Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;->a:Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;->a:Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;

    const-string v2, "global_curation_data_db"

    invoke-static {p0, v1, v2}, Landroid/arch/persistence/room/Room;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->a()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;

    sput-object p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;->a:Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;->a:Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "GlobalCurationDataRoom"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDateByTitle - title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {p0}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;->a()Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDao;

    move-result-object p0

    .line 104
    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "GlobalCurationDataRoom"

    const-string p1, "getDateByTitle - date == null || date.length()"

    .line 106
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "GlobalCurationDataRoom"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upset - title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {p0}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;->a()Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDao;

    move-result-object p0

    .line 92
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationData;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationData;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDao;->a(Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationData;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "GlobalCurationDataRoom"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upset - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data exist, being updated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "GlobalCurationDataRoom"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataByTitle - title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p0}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDatabase;->a()Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDao;

    move-result-object p0

    .line 118
    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationDataDao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "GlobalCurationDataRoom"

    const-string p1, "getDateByTitle - data == null || data.length()"

    .line 120
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
