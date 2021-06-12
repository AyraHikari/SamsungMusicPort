.class public abstract Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field protected c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

.field protected d:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

.field protected f:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 33
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->a()Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->f:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    .line 34
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    .line 35
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;-><init>()V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;

    .line 36
    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->getSenderType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DMA:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    if-eq v0, v1, :cond_2

    const-string v0, "la"

    .line 42
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mcc"

    .line 44
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mnc"

    .line 47
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "dm"

    .line 49
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "auid"

    .line 50
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "do"

    .line 55
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "av"

    .line 56
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uv"

    .line 57
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "at"

    .line 58
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fv"

    .line 59
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tid"

    .line 60
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "v"

    const-string v1, "2.01.007"

    .line 63
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tz"

    .line 64
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "aip"

    const-string v1, "1"

    .line 66
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "oip"

    .line 69
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p1
.end method

.method protected b(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;->a(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    new-instance v7, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    const-string v1, "t"

    .line 81
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v1, "ts"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->d(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    .line 80
    invoke-virtual {v0, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    return-void
.end method

.method protected d(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;"
        }
    .end annotation

    const-string v0, "t"

    .line 86
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->b(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object p1

    return-object p1
.end method
