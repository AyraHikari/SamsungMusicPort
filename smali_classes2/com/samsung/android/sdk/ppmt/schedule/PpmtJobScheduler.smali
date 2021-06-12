.class public Lcom/samsung/android/sdk/ppmt/schedule/PpmtJobScheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PpmtJobScheduler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V
    .locals 5

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a(Landroid/content/Context;)I

    move-result v0

    .line 37
    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/PpmtJobScheduler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - instant"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/samsung/android/sdk/ppmt/PpmtJobService;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v2, v0, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v3, 0x0

    .line 41
    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 43
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 46
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 47
    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a(I)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 48
    new-instance p2, Landroid/app/job/JobWorkItem;

    invoke-direct {p2, v2}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    const-string v0, "jobscheduler"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 51
    invoke-virtual {p1, v1, p2}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    return-void

    .line 32
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/schedule/PpmtJobScheduler;->a:Ljava/lang/String;

    const-string p2, "fail to schedule. invalid params"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V
    .locals 4

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 61
    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a(Landroid/content/Context;)I

    move-result v0

    .line 62
    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/PpmtJobScheduler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.samsung.android.sdk.ppmt.RECEIVER_JOB_ALARM"

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppmt_timer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a(I)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p2, 0x0

    const/high16 v0, 0x8000000

    .line 68
    invoke-static {p1, p2, v1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const-string v0, "alarm"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p1, v0, p3, p4, p2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void

    .line 57
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/schedule/PpmtJobScheduler;->a:Ljava/lang/String;

    const-string p2, "fail to schedule. invalid params"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 78
    sget-object v0, Lcom/samsung/android/sdk/ppmt/schedule/PpmtJobScheduler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a(Landroid/content/Context;)I

    move-result p2

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.ppmt.RECEIVER_JOB_ALARM"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ppmt_timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p2, 0x0

    const/high16 v1, 0x8000000

    .line 84
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const-string v0, "alarm"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 88
    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method
