.class public Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/fcm/storepush/StorePushConstants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/samsung/android/app/music/fcm/storepush/StorePushConstants;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StorePushHandleTask"


# instance fields
.field private final action:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;->model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    .line 30
    iput-object p3, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;->action:Ljava/lang/String;

    .line 31
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private clickPushNotification(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;)V
    .locals 4

    const-string v0, "StorePushHandleTask"

    const-string v1, "clickPushNotification"

    .line 49
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p1, "StorePushHandleTask"

    const-string p2, "model is null"

    .line 52
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;)V

    const/4 v1, 0x3

    .line 58
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->setAction(I)V

    .line 60
    invoke-virtual {v0}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->build()Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushController;->sendLoggingApi(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;)Z

    .line 63
    invoke-virtual {p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "campaign_push_click"

    const-string v2, "campaign_id"

    .line 66
    invoke-virtual {p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->getParams()Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;

    move-result-object p2

    if-nez p2, :cond_2

    .line 71
    invoke-static {}, Lcom/samsung/android/app/music/ActivityLauncher;->a()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "StorePushHandleTask"

    const-string p2, " model or params is null. launch samsung music"

    .line 72
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "StorePushHandleTask"

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickPushNotification params : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getDeeplink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 79
    invoke-virtual {p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getDeeplink()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    .line 80
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 83
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/music/ActivityLauncher;->a()Landroid/content/Intent;

    move-result-object v0

    .line 86
    :goto_0
    invoke-static {p1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    .line 87
    invoke-virtual {p1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 88
    invoke-virtual {p1}, Landroid/app/TaskStackBuilder;->startActivities()V

    :goto_1
    return-void
.end method

.method private dismissPushNotification(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;)V
    .locals 2

    const-string v0, "StorePushHandleTask"

    const-string v1, "dismissPushNotification"

    .line 94
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p1, "StorePushHandleTask"

    const-string p2, "model is null"

    .line 97
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;)V

    const/4 p2, 0x4

    const-string v1, "43"

    .line 103
    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->setAction(ILjava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->build()Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushController;->sendLoggingApi(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;)Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const-string p1, "com.sec.android.app.music.intent.action.CLICK_STORE_MARKETING_PUSH"

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;->model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;->clickPushNotification(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;)V

    goto :goto_0

    :cond_0
    const-string p1, "com.sec.android.app.music.intent.action.DISMISS_STORE_MARKETING_PUSH"

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;->model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;->dismissPushNotification(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;)V

    goto :goto_0

    :cond_1
    const-string p1, "StorePushHandleTask"

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
