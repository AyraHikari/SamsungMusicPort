.class public Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayCompat;
.super Ljava/lang/Object;
.source "WifiDisplayCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceAddress(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplaySdlCompat;->getDeviceAddress(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceName(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplaySdlCompat;->getDeviceName(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimaryDeviceType(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplaySdlCompat;->getPrimaryDeviceType(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
