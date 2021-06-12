.class public final Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Ljava/lang/String; = "[SA_SDK]RegisterUponInstallReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.accessory.action.REGISTER_AGENT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received register intent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance p2, Lcom/samsung/android/sdk/accessory/k;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/accessory/k;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK config initialization failed."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/sdk/accessory/j;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/j;->a()Ljava/util/concurrent/Future;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;

    const-string v2, "RegistrationThread"

    invoke-direct {v1, v2, p1, p2}, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/Future;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->start()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/j;->b()V

    :cond_0
    return-void
.end method
