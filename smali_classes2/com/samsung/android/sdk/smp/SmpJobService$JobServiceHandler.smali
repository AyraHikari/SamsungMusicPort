.class Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/SmpJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobServiceHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/smp/SmpJobService;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/smp/SmpJobService;Landroid/os/Looper;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;->a:Lcom/samsung/android/sdk/smp/SmpJobService;

    .line 31
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/smp/SmpJobService;Landroid/os/Looper;Lcom/samsung/android/sdk/smp/SmpJobService$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;-><init>(Lcom/samsung/android/sdk/smp/SmpJobService;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;->b:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "JOBPARAMS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobParameters;

    if-eqz p1, :cond_2

    .line 42
    :goto_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/samsung/android/sdk/smp/task/STask;->a(Landroid/os/Bundle;)Lcom/samsung/android/sdk/smp/task/STask;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;->a:Lcom/samsung/android/sdk/smp/SmpJobService;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/SmpJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/smp/task/STaskHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    .line 48
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;->b:Z

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;->a:Lcom/samsung/android/sdk/smp/SmpJobService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/smp/SmpJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 55
    invoke-static {}, Lcom/samsung/android/sdk/smp/SmpJobService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while handling job. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
