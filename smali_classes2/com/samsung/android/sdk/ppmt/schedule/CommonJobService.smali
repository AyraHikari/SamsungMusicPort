.class public abstract Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/ppmt/schedule/CommonJobServiceInterface;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:Landroid/os/Looper;

.field private volatile c:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->a:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 83
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->b:Landroid/os/Looper;

    .line 91
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->b:Landroid/os/Looper;

    invoke-direct {v0, p0, v1, p0}, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;-><init>(Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;Landroid/os/Looper;Lcom/samsung/android/sdk/ppmt/schedule/CommonJobServiceInterface;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->c:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 114
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->a:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->c:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;->a(Z)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->c:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;

    .line 122
    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->b:Landroid/os/Looper;

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->c:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "JOBPARAMS"

    .line 99
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 101
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->c:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->b(I)Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] onStopJob"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
