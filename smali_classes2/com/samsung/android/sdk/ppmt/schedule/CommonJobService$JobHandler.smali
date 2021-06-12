.class Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;

.field private b:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobServiceInterface;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;Landroid/os/Looper;Lcom/samsung/android/sdk/ppmt/schedule/CommonJobServiceInterface;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;->a:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;

    .line 32
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;->b:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobServiceInterface;

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;->c:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;->c:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 41
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "JOBPARAMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobParameters;

    if-eqz v0, :cond_3

    .line 43
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->b(I)Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 45
    iget v2, p1, Landroid/os/Message;->what:I

    if-lez v2, :cond_1

    .line 47
    :goto_0
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_EXTRAS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 50
    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;->b:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobServiceInterface;

    invoke-interface {v4, v1, v3}, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobServiceInterface;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;Landroid/os/Bundle;)V

    .line 52
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "EXTRA_EXTRAS"

    .line 57
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;->b:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobServiceInterface;

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobServiceInterface;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;Landroid/os/Bundle;)V

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;->a:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;

    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->a(Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] finished"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;->c:Z

    if-eqz p1, :cond_4

    .line 65
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;->a:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService$JobHandler;->a:Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;->a(Lcom/samsung/android/sdk/ppmt/schedule/CommonJobService;)Ljava/lang/String;

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

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
