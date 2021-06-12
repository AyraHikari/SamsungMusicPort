.class public Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT:I = -0x1

.field public static final DISPLAY_STATE_CONNECTED:I = 0x2

.field public static final DISPLAY_STATE_CONNECTING:I = 0x1

.field public static final DISPLAY_STATE_NOT_CONNECTED:I = 0x0

.field private static final SCAN_STATE_SCANNING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveDisplayState(Landroid/content/Intent;)I
    .locals 1

    const-string v0, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/WifiDisplayStatus;

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getAvailableDisplays(Landroid/hardware/display/DisplayManager;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/DisplayManager;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 46
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object p0

    .line 47
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 48
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    new-instance v4, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;

    invoke-direct {v4}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;-><init>()V

    .line 50
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;->primaryDeviceType:Ljava/lang/String;

    .line 51
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;->deviceAddress:Ljava/lang/String;

    .line 52
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;->deviceName:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public static getWifiDisplayStatus(Landroid/hardware/display/DisplayManager;)I
    .locals 0

    .line 23
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static isScanning(Landroid/hardware/display/DisplayManager;)Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method
