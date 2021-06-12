.class final Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDao;,
        Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;,
        Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LocalPlayHistoryRoom"

.field private static final b:Ljava/lang/String;

.field private static volatile c:Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;)Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;
    .locals 3

    .line 176
    new-instance v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;-><init>()V

    .line 177
    iget-wide v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->c:J

    iput-wide v1, v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->a:J

    .line 178
    iget v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->a:I

    iput v1, v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->b:I

    .line 179
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->d:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->c:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->d:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->d:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->d:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->e:Ljava/lang/String;

    .line 182
    iget-object p0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->d:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;

    iget-object p0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->d:Ljava/lang/String;

    iput-object p0, v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;",
            ">;"
        }
    .end annotation

    .line 137
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->b(Landroid/content/Context;)Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;->a()Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDao;

    move-result-object v0

    const/16 v1, 0x32

    .line 138
    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDao;->a(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 147
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDao;->a([Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 154
    :try_start_1
    sget-object v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalPlayHistory e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->c(Landroid/content/Context;)V

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    .line 158
    :goto_1
    throw p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;

    .line 189
    new-instance v2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;

    invoke-direct {v2}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;-><init>()V

    .line 190
    iget-object v3, v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->a:Ljava/lang/String;

    .line 191
    iget-object v3, v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->b:Ljava/lang/String;

    .line 192
    iget-object v3, v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->c:Ljava/lang/String;

    .line 193
    iget-object v3, v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->f:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->d:Ljava/lang/String;

    .line 195
    new-instance v3, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;

    invoke-direct {v3}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;-><init>()V

    .line 196
    iput-object v2, v3, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->d:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;

    .line 197
    iget-wide v4, v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->a:J

    iput-wide v4, v3, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->c:J

    .line 198
    iget-wide v4, v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->a:J

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->a(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->b:Ljava/lang/String;

    .line 199
    iget v1, v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->b:I

    iput v1, v3, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->a:I

    .line 200
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 109
    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;)Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;

    move-result-object p1

    .line 110
    invoke-static {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->b(Landroid/content/Context;)Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;->a()Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDao;

    move-result-object v0

    .line 116
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDao;->a()I

    move-result v1

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_0

    .line 117
    invoke-interface {v0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDao;->b()I

    .line 119
    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDao;->a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 121
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->c(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    .line 124
    :goto_1
    throw p0
.end method

.method private static b(Landroid/content/Context;)Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    sget-object v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->c:Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->c:Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;

    if-nez v1, :cond_0

    .line 53
    const-class v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;

    const-string v2, "local_play_history"

    invoke-static {p0, v1, v2}, Landroid/arch/persistence/room/Room;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->a()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;

    sput-object p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->c:Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 58
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->c:Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;

    return-object p0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 1

    const-string v0, "local_play_history"

    .line 165
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 169
    :cond_0
    sget-object p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->a:Ljava/lang/String;

    const-string v0, "deleteDatabaseFile local_play_history is not exist."

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    .line 171
    sput-object p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->c:Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;

    .line 172
    sget-object p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->a:Ljava/lang/String;

    const-string v0, "deleteDatabaseFile completed."

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
