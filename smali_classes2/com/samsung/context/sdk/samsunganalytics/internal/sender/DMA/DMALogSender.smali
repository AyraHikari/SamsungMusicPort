.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;
.source "SourceFile"


# static fields
.field private static j:J = 0x493e0L


# instance fields
.field private g:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

.field private h:Z

.field private i:I

.field private k:Landroid/content/Intent;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->h:Z

    .line 30
    iput p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->i:I

    const/4 p2, 0x0

    .line 34
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->k:Landroid/content/Intent;

    .line 35
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->l:Landroid/content/BroadcastReceiver;

    .line 39
    new-instance p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;Landroid/content/Context;)V

    invoke-direct {p2, p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->g:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    .line 48
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->g:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->a()Z

    return-void
.end method

.method private a()V
    .locals 6

    .line 101
    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->i:I

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->c()Ljava/util/Queue;

    move-result-object v0

    .line 104
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->f:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->g:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    .line 106
    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->d()Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;-><init>(Lcom/sec/android/diagmonagent/sa/IDMAInterface;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    .line 105
    invoke-interface {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->k:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SA_TIMER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->k:Landroid/content/Intent;

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->k:Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/TimerUtil;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 57
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->b(Landroid/content/Context;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->k:Landroid/content/Intent;

    sget-wide v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->j:J

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/TimerUtil;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->b()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b()V
    .locals 5

    .line 112
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;-><init>()V

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "av"

    .line 114
    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uv"

    .line 115
    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;->a(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;)Ljava/lang/String;

    move-result-object v1

    .line 118
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 119
    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "auid"

    .line 120
    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "at"

    .line 121
    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;->a(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->g:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->d()Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    move-result-object v2

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    .line 127
    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->a()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-interface {v2, v3, v4, v1, v0}, Lcom/sec/android/diagmonagent/sa/IDMAInterface;->sendCommon(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    const/16 v0, -0x9

    .line 130
    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->i:I

    :goto_1
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->l:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$2;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->l:Landroid/content/BroadcastReceiver;

    .line 69
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->l:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".SA_TIMER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->a()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->g:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    return-object p0
.end method


# virtual methods
.method public e(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->g:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x8

    return p1

    .line 76
    :cond_0
    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->i:I

    if-eqz v0, :cond_1

    .line 77
    iget p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->i:I

    return p1

    .line 79
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->c(Ljava/util/Map;)V

    .line 80
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->g:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->e()Z

    move-result p1

    if-nez p1, :cond_2

    .line 81
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->g:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->a()Z

    goto :goto_0

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->g:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->d()Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 83
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->a(Landroid/content/Context;)V

    .line 84
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->a()V

    .line 85
    iget-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->h:Z

    if-eqz p1, :cond_3

    .line 86
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->b()V

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->h:Z

    .line 92
    :cond_3
    :goto_0
    iget p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->i:I

    return p1
.end method

.method public f(Ljava/util/Map;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->e(Ljava/util/Map;)I

    move-result p1

    return p1
.end method
