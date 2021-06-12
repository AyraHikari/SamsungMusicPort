.class public Lcom/samsung/android/sdk/accessory/SAService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAService$a;,
        Lcom/samsung/android/sdk/accessory/SAService$b;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/sdk/accessory/SAService$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAService$b;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessory/SAService$b;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAService;->a:Lcom/samsung/android/sdk/accessory/SAService$b;

    return-void
.end method

.method static synthetic a(ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/4 v0, 0x5

    iput v0, p0, Landroid/os/Message;->what:I

    iput-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAService$a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->requestAgent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAService;->a:Lcom/samsung/android/sdk/accessory/SAService$b;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v0, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "[SA_SDK]SAService"

    const-string v0, "Received incoming connection indication"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "agentImplclass"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAService$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/accessory/SAService$a;-><init>(ILandroid/content/Intent;)V

    :goto_0
    invoke-direct {p0, p3, v0}, Lcom/samsung/android/sdk/accessory/SAService;->a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAService$a;)V

    goto :goto_1

    :cond_0
    const-string v0, "com.samsung.accessory.action.MESSAGE_RECEIVED"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "[SA_SDK]SAService"

    const-string v0, "Received message received indication"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "agentImplclass"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAService$a;

    invoke-direct {v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAService$a;-><init>(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAService;->stopSelf()V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
