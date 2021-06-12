.class public final Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "[SA_SDK]ServiceConnectionIndicationReceiver"

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/c;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/c;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/accessory/m;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/m;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->a:Ljava/lang/String;

    const-string p2, "fetch service profile description failed !!"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->a:Ljava/lang/String;

    const-string p2, "config  util default instance  creation failed !!"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->a:Ljava/lang/String;

    const-string v1, "Incoming service connection request received."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/accessory/k;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/k;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_2

    const-string v0, "agentImplclass"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->a:Ljava/lang/String;

    const-string p2, "Impl class not availabel in intent. Ignoring request"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Connection request will be handled by :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "implClass.getSuperclass() :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    const-class v1, Lcom/samsung/android/sdk/accessory/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_4

    if-lt v1, v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    const-string p1, "transactionId"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, p1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string p1, "agentId"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "peerAgent"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/accessory/SAJobService;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_5
    if-eqz v0, :cond_6

    const-class v0, Lcom/samsung/android/sdk/accessory/SAService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_6
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    if-eqz v3, :cond_7

    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_4

    :cond_7
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    :goto_4
    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Agent "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found. Check Accessory Service XML for serviceImpl attribute"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Agent Impl class not found!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK config init failed."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    return-void
.end method
