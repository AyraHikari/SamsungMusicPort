.class public Lcom/samsung/android/app/music/fcm/storepush/PushPurchaseNotificationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PushPurchaseNotificationHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildNotification(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;)Landroid/app/Notification;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f02052e

    .line 46
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 50
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x2

    .line 52
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    const-string v1, "com.samsung.android.app.music.PURCHASE"

    .line 54
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getDeeplink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 60
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getDeeplink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "android.intent.category.BROWSABLE"

    .line 62
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    .line 63
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/ActivityLauncher;->a()Landroid/content/Intent;

    move-result-object v1

    :goto_0
    const p1, 0x7f130036

    const/high16 v2, 0x8000000

    .line 69
    invoke-static {p0, p1, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 72
    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 73
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private static generateIdWithTime()I
    .locals 4

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static showNotification(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "PushPurchaseNotificationHelper"

    const-string p1, "failed to build show notification as push model is null"

    .line 28
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->getParams()Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/fcm/storepush/PushPurchaseNotificationHelper;->buildNotification(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;)Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "PushPurchaseNotificationHelper"

    const-string p1, "failed to build notification!"

    .line 33
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_1
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object p0

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->getTypeId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/app/music/fcm/storepush/PushPurchaseNotificationHelper;->generateIdWithTime()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v4/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
