.class public Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;
    }
.end annotation


# static fields
.field public static final CONN_STATE_CHANGEPLAYER_MUSIC:I

.field private static final DEFAULT:I = -0x1

.field public static final DISPLAY_STATE_CONNECTED:I

.field public static final DISPLAY_STATE_CONNECTING:I

.field public static final DISPLAY_STATE_NOT_CONNECTED:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    .line 25
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 26
    sput v3, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTED:I

    .line 27
    sput v2, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTING:I

    .line 28
    sput v1, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_NOT_CONNECTED:I

    goto :goto_0

    .line 30
    :cond_0
    sput v3, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTED:I

    .line 31
    sput v2, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTING:I

    .line 32
    sput v1, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_NOT_CONNECTED:I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveDisplayState(Landroid/content/Intent;)I
    .locals 2

    .line 52
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Landroid/hardware/display/SemWifiDisplayStatus;

    const-string v1, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    .line 54
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/display/SemWifiDisplayStatus;-><init>(Landroid/os/Parcelable;)V

    .line 56
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result p0

    return p0

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat;->getActiveDisplayState(Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method public static getActiveDisplayState(Landroid/hardware/display/DisplayManager;)I
    .locals 1

    .line 39
    const v0, 0x0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    .line 47
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat;->getWifiDisplayStatus(Landroid/hardware/display/DisplayManager;)I

    move-result p0

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
            "Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 69
    const p0, 0x0

    if-eqz p0, :cond_2

    .line 71
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getDisplays()[Landroid/hardware/display/SemWifiDisplay;

    move-result-object p0

    .line 72
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 73
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplay;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    new-instance v4, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;

    invoke-direct {v4}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;-><init>()V

    .line 75
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->primaryDeviceType:Ljava/lang/String;

    .line 76
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->deviceAddress:Ljava/lang/String;

    .line 77
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->deviceName:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat;->getAvailableDisplays(Landroid/hardware/display/DisplayManager;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 88
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;

    .line 89
    new-instance v2, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;

    invoke-direct {v2}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;-><init>()V

    .line 90
    invoke-virtual {v1}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->primaryDeviceType:Ljava/lang/String;

    .line 91
    invoke-virtual {v1}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->deviceAddress:Ljava/lang/String;

    .line 92
    invoke-virtual {v1}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->deviceName:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v2

    :cond_3
    return-object v0
.end method

.method public static isScanning(Landroid/hardware/display/DisplayManager;)Z
    .locals 1

    .line 103
    const v0, 0x0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result p0

    return p0

    .line 107
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat;->isScanning(Landroid/hardware/display/DisplayManager;)Z

    move-result p0

    return p0
.end method
