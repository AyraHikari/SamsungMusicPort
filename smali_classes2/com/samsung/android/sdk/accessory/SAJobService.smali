.class public Lcom/samsung/android/sdk/accessory/SAJobService;
.super Landroid/app/job/JobService;

# interfaces
.implements Lcom/samsung/android/sdk/accessory/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAJobService$a;
    }
.end annotation


# static fields
.field private static volatile a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 9

    const-string v0, "[SA_SDK]SAJobService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Schedule SC indication Job for class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    move-object v2, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/sdk/accessory/SAJobService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/samsung/android/sdk/accessory/SAJobService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget v2, Lcom/samsung/android/sdk/accessory/SAJobService;->a:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/samsung/android/sdk/accessory/SAJobService;->a:I

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v2, "action"

    invoke-virtual {v0, v2, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "agentImplclass"

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "transactionId"

    invoke-virtual {v0, p1, p3, p4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "agentId"

    invoke-virtual {v0, p1, p5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p6, :cond_0

    const-string p1, "peerAgent"

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string p2, "peerAgent"

    invoke-virtual {v0, p2, p1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    const-string p1, "jobscheduler"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAJobService;ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/app/job/JobParameters;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p2, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x6

    iput v0, p1, Landroid/os/Message;->what:I

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "params"

    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p2, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAJobService$a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->requestAgent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 9

    const-string v0, "[SA_SDK]SAJobService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Schedule Message indication Job for class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.accessory.action.MESSAGE_RECEIVED"

    move-object v2, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/sdk/accessory/SAJobService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/job/JobParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SAJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "[SA_SDK]SAJobService"

    const-string v2, "Received incoming connection indication"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v2, "agentImplclass"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/accessory/SAJobService$a;

    invoke-direct {v2, v1, p1, p0}, Lcom/samsung/android/sdk/accessory/SAJobService$a;-><init>(ILandroid/app/job/JobParameters;Lcom/samsung/android/sdk/accessory/SAJobService;)V

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/accessory/SAJobService;->a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAJobService$a;)V

    goto :goto_1

    :cond_0
    const-string v2, "com.samsung.accessory.action.MESSAGE_RECEIVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[SA_SDK]SAJobService"

    const-string v2, "Received message received indication"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v2, "agentImplclass"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/accessory/SAJobService$a;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1, p0}, Lcom/samsung/android/sdk/accessory/SAJobService$a;-><init>(ILandroid/app/job/JobParameters;Lcom/samsung/android/sdk/accessory/SAJobService;)V

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
