.class public Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDao;,
        Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;,
        Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;)J
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "RestApiHistoryRoom"

    const-string v1, "insert 2"

    .line 122
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {p0}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;->a()Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDao;

    move-result-object p0

    .line 124
    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDao;->a(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;)J

    move-result-wide v0

    const-string p1, "RestApiHistoryRoom"

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert 2 - id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface {p0}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDao;->a()V

    return-wide v0
.end method

.method private static a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 39
    sget-object v0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom;->a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom;->a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;

    if-nez v1, :cond_0

    .line 42
    const-class v1, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;

    const-string v2, "rest_api_history_db"

    invoke-static {p0, v1, v2}, Landroid/arch/persistence/room/Room;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->a()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;

    sput-object p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom;->a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 47
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom;->a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;

    return-object p0
.end method
