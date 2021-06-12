.class public final Lcom/samsung/android/app/musiclibrary/core/utils/AutoOffUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.action.MUSIC_AUTO_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static hasAutoOffPendingIntent(Landroid/content/Context;)Z
    .locals 3

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/AutoOffUtils;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    const/high16 v2, 0x20000000

    invoke-static {v0, v1, p0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static invokeAutoOff(Landroid/content/Context;I)J
    .locals 7

    const-string v0, "alarm"

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/AutoOffUtils;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, p0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    if-eqz p1, :cond_1

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    .line 27
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    .line 28
    invoke-virtual {v0, v2, v3, v4, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0, v2, v3, v4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    return-wide v3
.end method

.method public static removeAutoOffPendingIntent(Landroid/content/Context;)V
    .locals 3

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/AutoOffUtils;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    const/high16 v2, 0x20000000

    invoke-static {v0, v1, p0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/app/PendingIntent;->cancel()V

    :cond_0
    return-void
.end method
