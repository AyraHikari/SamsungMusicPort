.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;


# instance fields
.field private a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

.field private b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 36
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    .line 38
    :cond_0
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-direct {p1, p3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    .line 39
    iput-boolean p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->c:Z

    return-void
.end method

.method private constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;I)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;-><init>(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    .line 44
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-direct {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;
    .locals 6

    .line 62
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    if-nez v0, :cond_3

    .line 63
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    monitor-enter v0

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->m()I

    move-result v1

    .line 65
    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->enableUseDBQueue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 66
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "lgt"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "rtb"

    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->n()Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    new-instance p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-direct {p0, p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;I)V

    sput-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    goto :goto_0

    .line 74
    :cond_0
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Landroid/content/Context;ZI)V

    sput-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    goto :goto_0

    .line 77
    :cond_1
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-direct {p1, p0, v3, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Landroid/content/Context;ZI)V

    sput-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    goto :goto_0

    .line 81
    :cond_2
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-direct {p1, p0, v3, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Landroid/content/Context;ZI)V

    sput-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    .line 83
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 85
    :cond_3
    :goto_1
    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 106
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;"
        }
    .end annotation

    .line 136
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->c:Z

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->b()V

    if-gtz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->a()Ljava/util/Queue;

    move-result-object p1

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->a(I)Ljava/util/Queue;

    move-result-object p1

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->a()Ljava/util/Queue;

    move-result-object p1

    .line 147
    :goto_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get log from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->c:Z

    if-eqz v1, :cond_2

    const-string v1, "Database "

    goto :goto_1

    :cond_2
    const-string v1, "Queue "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method public a(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V
    .locals 1

    .line 121
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;-><init>(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 89
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;)V

    return-void
.end method

.method public a(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;)V
    .locals 1

    .line 93
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;-><init>(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;)V

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;)V

    return-void
.end method

.method public a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->c:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;)V
    .locals 1

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->c:Z

    .line 98
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    .line 100
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->d()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 168
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->c:Z

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->a(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->c:Z

    return v0
.end method

.method public b()V
    .locals 3

    .line 125
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->c:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->a(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->a(J)V

    :cond_0
    return-void
.end method

.method public c()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method
