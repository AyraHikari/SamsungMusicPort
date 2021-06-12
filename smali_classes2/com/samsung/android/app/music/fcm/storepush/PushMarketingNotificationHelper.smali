.class public Lcom/samsung/android/app/music/fcm/storepush/PushMarketingNotificationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PushMarketingNotificationHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildNotification(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;I)Landroid/app/Notification;
    .locals 4

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->getParams()Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 66
    invoke-virtual {v0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f02052e

    .line 67
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 68
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 69
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 70
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/fcm/storepush/PushMarketingNotificationHelper;->getDismissPendingIntent(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 71
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/fcm/storepush/PushMarketingNotificationHelper;->getPendingIntent(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 76
    invoke-virtual {v0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 77
    invoke-virtual {v0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getLargeIcon()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushImgUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 81
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_2

    const-string p1, "com.samsung.android.app.music.MARKETING"

    .line 82
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 86
    :cond_2
    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/fcm/storepush/PushMarketingNotificationHelper;->getNotificationStyle(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;)Landroid/app/Notification$Style;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 88
    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 91
    :cond_3
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private static getBigPictureNotificationStyle(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;)Landroid/app/Notification$BigPictureStyle;
    .locals 4

    .line 135
    invoke-virtual {p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 139
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushImgUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "PushMarketingNotificationHelper"

    const-string p1, "BigPictureStyle >> bitmap is null "

    .line 141
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 147
    :cond_1
    :try_start_0
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 148
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushImgUtils;->resizeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "PushMarketingNotificationHelper"

    const-string p1, "Bitmap download failed for push notification. No image will be included with the notification."

    .line 151
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 156
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getExpandMessage()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "PushMarketingNotificationHelper"

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBigPictureNotificationStyle message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 163
    :cond_3
    invoke-virtual {v1, p0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string p1, "PushMarketingNotificationHelper"

    const-string p2, "Failed to create big picture style"

    .line 167
    invoke-static {p1, p2, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static getDismissPendingIntent(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;I)Landroid/app/PendingIntent;
    .locals 2

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.intent.action.DISMISS_STORE_MARKETING_PUSH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/app/music/fcm/storepush/StorePushReceiver;

    .line 109
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_marketing_push"

    .line 111
    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/storepush/ParcelableUtils;->toByteArray(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 110
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "extra_marketing_push_id"

    .line 112
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 115
    invoke-static {p0, p2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static getNormalNotificationStyle(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;)Landroid/app/Notification$BigTextStyle;
    .locals 3

    .line 179
    invoke-virtual {p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;->getExpandMessage()Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    const-string p2, "PushMarketingNotificationHelper"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNormalNotificationStyle getExpandMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object v0
.end method

.method private static getNotificationId(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;)I
    .locals 2

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    rem-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static getNotificationStyle(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;)Landroid/app/Notification$Style;
    .locals 1

    .line 121
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/fcm/storepush/PushMarketingNotificationHelper;->getBigPictureNotificationStyle(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/fcm/storepush/PushMarketingNotificationHelper;->getNormalNotificationStyle(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getPendingIntent(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;I)Landroid/app/PendingIntent;
    .locals 2

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.intent.action.CLICK_STORE_MARKETING_PUSH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/app/music/fcm/storepush/StorePushReceiver;

    .line 98
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_marketing_push"

    .line 100
    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/storepush/ParcelableUtils;->toByteArray(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 99
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 103
    invoke-static {p0, p2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static showNotification(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "PushMarketingNotificationHelper"

    const-string p1, "failed to build show notification as push model is null"

    .line 24
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 28
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/fcm/storepush/PushMarketingNotificationHelper;->getNotificationId(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;)I

    move-result v1

    const-string v2, "PushMarketingNotificationHelper"

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNotificationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "notification"

    .line 32
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 33
    invoke-static {p0, p1, v1}, Lcom/samsung/android/app/music/fcm/storepush/PushMarketingNotificationHelper;->buildNotification(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;I)Landroid/app/Notification;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "PushMarketingNotificationHelper"

    const-string p1, "failed to build notification!"

    .line 35
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p1, "PushMarketingNotificationHelper"

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notificationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :try_start_0
    invoke-virtual {v2, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
