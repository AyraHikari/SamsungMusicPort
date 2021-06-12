.class public Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkDormancyNotificationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "notification"

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string p0, "SMUSIC-Dormancy"

    const-string v0, "showDormancyNotification : notificationManager is null!"

    .line 31
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "SMUSIC-Dormancy"

    const-string v2, "showDormancyNotification : Dormancy noti is shown!!"

    .line 34
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f02020c

    .line 36
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v2, 0x7f0b01bf

    .line 38
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v2, 0x7f0b01c2

    .line 39
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 41
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    .line 42
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 43
    invoke-static {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkDormancyNotificationUtils;->c(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 44
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p0, v2, :cond_1

    const-string p0, "com.samsung.android.app.music.NOTICES"

    .line 45
    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_1
    const p0, 0xc7a7

    .line 47
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-nez p0, :cond_0

    const-string p0, "SMUSIC-Dormancy"

    const-string v0, "hideDormancyNotification : notificationManager is null!"

    .line 54
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "SMUSIC-Dormancy"

    const-string v1, "hideDormancyNotification : Dormancy noti is dismiss!!"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xc7a7

    .line 58
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private static c(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 62
    invoke-static {}, Lcom/samsung/android/app/music/ActivityLauncher;->b()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f130034

    const/high16 v2, 0x8000000

    .line 63
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
