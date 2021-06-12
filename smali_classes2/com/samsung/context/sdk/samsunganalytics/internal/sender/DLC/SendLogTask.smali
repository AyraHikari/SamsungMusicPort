.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;


# instance fields
.field private a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

.field private b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field private c:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

.field private d:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->e:I

    .line 25
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    .line 26
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 27
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 28
    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->d()Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 35
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->d()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 36
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 37
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->b()J

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 38
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    const-string v8, ""

    const-string v9, "2.01.007"

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 42
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->c()Ljava/lang/String;

    move-result-object v10

    .line 34
    invoke-interface/range {v1 .. v10}, Lcom/sec/spp/push/dlc/api/IDlcService;->requestSend(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->e:I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send to DLC : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->c:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 3

    .line 52
    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->e:I

    if-nez v0, :cond_0

    const-string v0, "DLC Sender"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send result success : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "DLC Sender"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send result fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x7

    return v0
.end method
