.class public Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;
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
.field private static final LOG_TAG:Ljava/lang/String; = "StorePushMessageTask"


# instance fields
.field private final appType:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    .line 34
    iput-object p3, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->appType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method checkDisplayPolicy(Landroid/content/Context;)I
    .locals 1

    .line 118
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xb

    .line 119
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v0, 0x15

    if-ge p1, v0, :cond_2

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->f()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->handleMilkPushMessage(Landroid/content/Context;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method handleMilkPushMessage(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "StorePushMessageTask"

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMilkPushMessage app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->appType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SamsungMusic"

    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/fcm/storepush/PushPurchaseNotificationHelper;->showNotification(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;)V

    goto :goto_0

    :cond_0
    const-string v0, "SamsungMusic_Marketing"

    .line 49
    iget-object v1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->handleStoreMarketingPushMessage(Landroid/content/Context;)Z

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "StorePushMessageTask"

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown app type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method handleStoreMarketingPushMessage(Landroid/content/Context;)Z
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->getParams()Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "StorePushMessageTask"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->getParams()Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;)V

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->setAction(I)V

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->build()Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushController;->sendLoggingApi(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;)Z

    .line 71
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v2

    const-string v3, "campaign_push_receive"

    const-string v4, "campaign_id"

    iget-object v5, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    .line 73
    invoke-virtual {v5}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "null"

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    .line 72
    :goto_0
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->checkDisplayPolicy(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-ne v2, v3, :cond_4

    const/4 v2, 0x3

    .line 78
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->setAction(I)V

    .line 79
    iget-object v2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/fcm/storepush/PushMarketingNotificationHelper;->showNotification(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->setAction(I)V

    .line 82
    invoke-virtual {v0}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->build()Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushController;->sendLoggingApi(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;)Z

    .line 85
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v0, "campaign_push_displayed"

    const-string v2, "campaign_id"

    iget-object v3, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    .line 87
    invoke-virtual {v3}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "null"

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->model:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    .line 86
    :goto_1
    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v2, "49"

    .line 90
    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->setAction(ILjava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->build()Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushController;->sendLoggingApi(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;)Z

    goto :goto_3

    :cond_4
    const-string v3, "49"

    if-ne v2, v1, :cond_5

    const-string v3, "41"

    goto :goto_2

    :cond_5
    if-ne v2, v5, :cond_6

    const-string v3, "42"

    .line 103
    :cond_6
    :goto_2
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->setAction(ILjava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->build()Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushController;->sendLoggingApi(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;)Z

    :goto_3
    return v1
.end method
