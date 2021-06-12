.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    return-void
.end method

.method private a()I
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 34
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x4

    return v0
.end method

.method private a(I)I
    .locals 4

    const/4 v0, -0x4

    if-ne p1, v0, :cond_0

    const-string p1, "DLS Sender"

    const-string v1, "Network unavailable."

    .line 46
    invoke-static {p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "DLS Sender"

    const-string v0, "policy expired. request policy"

    .line 51
    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x6

    return p1

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->p()I

    move-result v1

    if-ne v1, p1, :cond_2

    const-string v1, "DLS Sender"

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network unavailable by restrict option:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private a(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;",
            ")I"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {p3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 73
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 74
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 76
    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->a(Landroid/content/Context;I)I

    move-result v4

    const v5, 0xc800

    if-le v5, v4, :cond_0

    goto :goto_1

    :cond_0
    const v4, 0xc800

    .line 81
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 84
    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->d()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v6

    if-eq v6, p2, :cond_2

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v6, v3

    if-le v6, v4, :cond_3

    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    .line 91
    invoke-interface {v2, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 94
    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {p3}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 96
    iget-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-virtual {p3, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(Ljava/util/List;)V

    .line 97
    iget-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    const/16 v1, 0xc8

    invoke-virtual {p3, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(I)Ljava/util/Queue;

    move-result-object p3

    .line 98
    invoke-interface {p3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_1

    .line 102
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 p1, -0x1

    return p1

    .line 105
    :cond_5
    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-virtual {v4, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(Ljava/util/List;)V

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, v2

    move v8, v3

    move-object v9, p4

    .line 106
    invoke-direct/range {v4 .. v9}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;ILcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V

    const-string v4, "DLSLogSender"

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send packet : num("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") size("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    return v3
.end method

.method private a(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;Z)I
    .locals 2

    if-nez p2, :cond_0

    const/16 p1, -0x64

    return p1

    .line 117
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 119
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->a(Landroid/content/Context;II)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->b(Landroid/content/Context;II)V

    .line 124
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 125
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 126
    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->l()I

    move-result v1

    invoke-direct {p1, p2, v0, v1, p3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V

    if-eqz p4, :cond_2

    const-string p2, "sync send"

    .line 128
    invoke-static {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->a()V

    .line 130
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->b()I

    move-result p1

    return p1

    .line 132
    :cond_2
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->f:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    invoke-interface {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    return-object p0
.end method

.method private a(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;ILcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;I",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;",
            ")V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a:Landroid/content/Context;

    invoke-static {v0, p1, p4}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->b(Landroid/content/Context;II)V

    .line 65
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->f:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    new-instance p4, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 67
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 68
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->l()I

    move-result v4

    move-object v0, p4

    move-object v1, p2

    move-object v2, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V

    .line 65
    invoke-interface {p1, p4}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public e(Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a()I

    move-result v0

    .line 140
    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->c(Ljava/util/Map;)V

    const/4 p1, -0x6

    if-ne v1, p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->f:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-static {p1, v0, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;)V

    .line 146
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->b()V

    :cond_0
    return v1

    .line 150
    :cond_1
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;I)V

    .line 161
    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    const-string v3, "ts"

    .line 162
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->d(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object p1

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;-><init>(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    const/4 p1, 0x0

    .line 161
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;Z)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    return v2

    .line 169
    :cond_2
    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(I)Ljava/util/Queue;

    move-result-object v4

    .line 170
    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-direct {p0, v0, p1, v4, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)I

    .line 172
    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-direct {p0, v0, p1, v4, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)I

    goto :goto_0

    .line 174
    :cond_3
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 175
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 176
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;Z)I

    move-result v2

    if-ne v2, v3, :cond_3

    return v2

    :cond_4
    :goto_0
    return v2
.end method

.method public f(Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a()I

    move-result v0

    .line 188
    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, -0x6

    if-ne v1, v3, :cond_0

    .line 192
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    .line 193
    invoke-static {v1, v3, v4, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)Lcom/samsung/context/sdk/samsunganalytics/internal/policy/GetPolicyClient;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/GetPolicyClient;->a()V

    .line 195
    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/GetPolicyClient;->b()I

    move-result v1

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get policy sync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    return v1

    :cond_0
    return v1

    .line 204
    :cond_1
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    const-string v3, "ts"

    .line 205
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->d(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object p1

    invoke-direct {v1, v3, v4, v5, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;-><init>(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    const/4 p1, 0x1

    .line 204
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;Z)I

    move-result p1

    return p1
.end method
