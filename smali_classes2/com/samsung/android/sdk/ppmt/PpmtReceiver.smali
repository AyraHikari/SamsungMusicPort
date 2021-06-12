.class public Lcom/samsung/android/sdk/ppmt/PpmtReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PpmtReceiver"


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

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 42
    sget-object v0, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;->a:Ljava/lang/String;

    const-string v1, "boot completed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object p1, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;->a:Ljava/lang/String;

    const-string v0, "dereg state."

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 48
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->HANDLE_INCOMPLETE_PUSH_EVENTS:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 49
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v0

    const-string v1, "boot_comp"

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Ljava/lang/String;Z)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    const-string v0, "card_click"

    .line 56
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "card_clear"

    .line 59
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "handle_display_result"

    .line 62
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.sdk.ppmt.RECEIVER_EVENTS"

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "extra_action"

    .line 26
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.samsung.android.sdk.ppmt.RECEIVER_JOB_ALARM"

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a(Landroid/os/Bundle;)Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object p2

    .line 32
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 33
    sget-object v0, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] alarm received"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    :cond_2
    :goto_0
    return-void
.end method
