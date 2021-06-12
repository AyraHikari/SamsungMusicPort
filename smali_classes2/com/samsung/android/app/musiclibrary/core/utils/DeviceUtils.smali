.class public final Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils$ForegroundCheckTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDeviceInteractive(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "power"

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    .line 25
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeviceInteractive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static isEnableTelephony(Landroid/content/Context;)Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.hardware.telephony"

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMusicUiTop(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static isMusicUiTop(Landroid/content/Context;Z)Z
    .locals 2

    const-string v0, "keyguard"

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 53
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 57
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils$ForegroundCheckTask;->isTop(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils$ForegroundCheckTask;->isTop(Landroid/content/Context;)Z

    move-result p0

    .line 64
    :goto_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMusicUiTop() isTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static isSupportNavigationBar(Landroid/content/Context;)Z
    .locals 3

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "config_showNavigationBar"

    const-string v1, "bool"

    const-string v2, "android"

    .line 31
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
