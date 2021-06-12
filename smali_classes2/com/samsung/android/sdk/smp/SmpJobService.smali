.class public Lcom/samsung/android/sdk/smp/SmpJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SmpJobService"


# instance fields
.field private volatile b:Landroid/os/Looper;

.field private volatile c:Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpJobService;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 66
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Landroid/content/Context;)V

    .line 69
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpJobService;->a:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmpJobService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/SmpJobService;->b:Landroid/os/Looper;

    .line 75
    new-instance v0, Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/SmpJobService;->b:Landroid/os/Looper;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;-><init>(Lcom/samsung/android/sdk/smp/SmpJobService;Landroid/os/Looper;Lcom/samsung/android/sdk/smp/SmpJobService$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/SmpJobService;->c:Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 101
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpJobService;->a:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpJobService;->c:Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;->a(Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;Z)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpJobService;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/samsung/android/sdk/smp/SmpJobService;->b:Landroid/os/Looper;

    .line 107
    iput-object v0, p0, Lcom/samsung/android/sdk/smp/SmpJobService;->c:Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpJobService;->c:Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "JOBPARAMS"

    .line 84
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 86
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/SmpJobService;->c:Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/SmpJobService$JobServiceHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 93
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpJobService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopJob - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
