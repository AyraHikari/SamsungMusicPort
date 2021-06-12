.class public abstract Lcom/samsung/android/sdk/smp/SmpFcmService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "SmpFcmService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 5

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpFcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Landroid/content/Context;)V

    .line 69
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpFcmService;->b:Ljava/lang/String;

    const-string v1, "message received"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "ppmt"

    .line 71
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpFcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ppmt"

    .line 73
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 77
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "extra"

    .line 78
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    sget-object v2, Lcom/samsung/android/sdk/smp/SmpFcmService;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get extra value. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 84
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpFcmService;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appdata"

    .line 86
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpFcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v4, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->RECEIVE_MARKETING_MESSAGE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->b(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    goto :goto_1

    .line 89
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/smp/SmpFcmService;->b:Ljava/lang/String;

    const-string v2, "display : disabled"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/smp/SmpFcmService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 96
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/smp/SmpFcmService;->b:Ljava/lang/String;

    const-string v0, "message received but initialize is not done"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 99
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/SmpFcmService;->b(Lcom/google/firebase/messaging/RemoteMessage;)V

    if-eqz v0, :cond_4

    const-string p1, "fcm"

    const-string v2, "smp-requestID"

    .line 101
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/push/PushHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpFcmService;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message received [rid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpFcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpFcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fcm"

    invoke-static {v0, p1, v2}, Lcom/samsung/android/sdk/smp/data/AckManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance p1, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SEND_ACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpFcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->c(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpFcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->b(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    goto :goto_2

    .line 110
    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/smp/SmpFcmService;->b:Ljava/lang/String;

    const-string v0, "message received but initialize is not done"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public abstract b(Lcom/google/firebase/messaging/RemoteMessage;)V
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpFcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Landroid/content/Context;)V

    .line 43
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpFcmService;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token refreshed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpFcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->l(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    const-string v3, "fcm"

    .line 48
    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->d(I)V

    .line 51
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/TestModeUtil;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->h(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->g(Landroid/content/Context;)V

    .line 58
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/SmpFcmService;->c(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method protected d(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
