.class public Lcom/samsung/android/sdk/smp/SmpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SmpReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    .line 22
    sget-object p1, Lcom/samsung/android/sdk/smp/SmpReceiver;->a:Ljava/lang/String;

    const-string p2, "context is null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 26
    sget-object p1, Lcom/samsung/android/sdk/smp/SmpReceiver;->a:Ljava/lang/String;

    const-string p2, "intent is null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Landroid/content/Context;)V

    .line 31
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpReceiver;->a:Ljava/lang/String;

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.sdk.smp.TASK_ALARM"

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/smp/task/STask;->a(Landroid/os/Bundle;)Lcom/samsung/android/sdk/smp/task/STask;

    move-result-object p2

    .line 35
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->b(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.samsung.android.sdk.smp.MARKETING_CLICK"

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v0, "com.samsung.android.sdk.smp.MARKETING_CLEAR"

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v0, "com.samsung.android.sdk.smp.HANDLE_DISPLAY_RESULT"

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 47
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->c(Landroid/content/Context;)V

    :cond_6
    :goto_0
    return-void
.end method
