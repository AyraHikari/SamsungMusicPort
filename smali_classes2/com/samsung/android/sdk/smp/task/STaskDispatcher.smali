.class public Lcom/samsung/android/sdk/smp/task/STaskDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "STaskDispatcher"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->c()Lcom/samsung/android/sdk/smp/task/STask$Action;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/task/STask;->a(Landroid/content/Context;)I

    move-result v0

    .line 33
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/task/ThreadController;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void

    .line 28
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a:Ljava/lang/String;

    const-string p1, "fail to dispatch. invalid params"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;J)V
    .locals 6

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->c()Lcom/samsung/android/sdk/smp/task/STask$Action;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 77
    :cond_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/task/STask;->a(Landroid/content/Context;)I

    move-result v0

    .line 78
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/smp/common/TimeUtil;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    if-lt v1, v2, :cond_1

    .line 82
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/sdk/smp/SmpReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.samsung.android.sdk.smp.TASK_ALARM"

    .line 83
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smp_timer"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/task/STask;->b(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 86
    invoke-static {p0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    .line 88
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/sdk/smp/SmpService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smp_timer"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/task/STask;->b(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 91
    invoke-static {p0, v4, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    :goto_0
    const-string v0, "alarm"

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 96
    invoke-virtual {p0, v4, p2, p3, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {p0, v4, p2, p3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_1
    return-void

    .line 73
    :cond_3
    :goto_2
    sget-object p0, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a:Ljava/lang/String;

    const-string p1, "fail to dispatch. invalid params"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V
    .locals 4

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->c()Lcom/samsung/android/sdk/smp/task/STask$Action;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 44
    :cond_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/task/STask;->a(Landroid/content/Context;)I

    move-result v0

    .line 45
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 49
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/samsung/android/sdk/smp/SmpJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v2, v0, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v0, 0x0

    .line 51
    invoke-virtual {v2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 57
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/task/STask;->b(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 58
    new-instance p1, Landroid/app/job/JobWorkItem;

    invoke-direct {p1, v1}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    const-string v1, "jobscheduler"

    .line 60
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 61
    invoke-virtual {p0, v0, p1}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/sdk/smp/SmpService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smp_timer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/task/STask;->b(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    .line 40
    :cond_2
    :goto_1
    sget-object p0, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a:Ljava/lang/String;

    const-string p1, "fail to dispatch. invalid params"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V
    .locals 5

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->c()Lcom/samsung/android/sdk/smp/task/STask$Action;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 108
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel alarm if exits - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/task/STask;->a(Landroid/content/Context;)I

    move-result p1

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/smp/SmpReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.smp.TASK_ALARM"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smp_timer"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 117
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    .line 119
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/smp/SmpService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smp_timer"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 121
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    :goto_0
    const-string v0, "alarm"

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 125
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void

    .line 104
    :cond_2
    :goto_1
    sget-object p0, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a:Ljava/lang/String;

    const-string p1, "fail to cancel. invalid params"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
