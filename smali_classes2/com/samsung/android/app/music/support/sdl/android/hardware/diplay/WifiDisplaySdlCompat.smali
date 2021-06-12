.class public Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplaySdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceAddress(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;
    .locals 0

    .line 10
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeviceName(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPrimaryDeviceType(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
