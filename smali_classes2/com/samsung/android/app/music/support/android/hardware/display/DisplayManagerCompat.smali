.class public Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

.field public static final CONN_STATE_CHANGEPLAYER_MUSIC:I

.field public static final WFD_APP_STATE_PAUSE:I = 0x2

.field public static final WFD_APP_STATE_RESUME:I = 0x1

.field public static final WFD_APP_STATE_SETUP:I = 0x0

.field public static final WFD_APP_STATE_TEARDOWN:I = 0x3

.field public static final WIFIDISPLAY_SESSION_STATE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFIDISPLAY_SOURCE_STATE:Ljava/lang/String;

.field private static sCheckScreenSharingSupported:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    :goto_0
    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    .line 26
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    sput-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

    .line 36
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "android.intent.action.WIFI_DISPLAY"

    sput-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->WIFIDISPLAY_SESSION_STATE:Ljava/lang/String;

    .line 40
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    goto :goto_1

    :cond_1
    const-string v0, "android.intent.action.WIFI_DISPLAY"

    :goto_1
    sput-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->WIFIDISPLAY_SOURCE_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExceptionalCase(Landroid/hardware/display/DisplayManager;)I
    .locals 1

    .line 95
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semCheckExceptionalCase()I

    move-result p0

    return p0

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->checkExceptionalCase(Landroid/hardware/display/DisplayManager;)I

    move-result p0

    return p0
.end method

.method public static checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I
    .locals 1

    .line 47
    sget-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->sCheckScreenSharingSupported:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 48
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 49
    const p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->sCheckScreenSharingSupported:Ljava/lang/Integer;

    goto :goto_0

    .line 52
    :cond_0
    const p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->sCheckScreenSharingSupported:Ljava/lang/Integer;

    .line 55
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->sCheckScreenSharingSupported:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static connectWifiDisplayWithMode(Landroid/hardware/display/DisplayManager;ILjava/lang/String;)V
    .locals 1

    .line 87
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->semConnectWifiDisplay(ILjava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->connectWifiDisplayWithMode(Landroid/hardware/display/DisplayManager;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static disconnectWifiDisplay(Landroid/hardware/display/DisplayManager;)V
    .locals 1

    .line 79
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semDisconnectWifiDisplay()V

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->disconnectWifiDisplay(Landroid/hardware/display/DisplayManager;)V

    :goto_0
    return-void
.end method

.method private static getWifiDisplayAppState(I)Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 150
    :pswitch_0
    sget-object p0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    goto :goto_0

    .line 147
    :pswitch_1
    sget-object p0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->PAUSE:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    goto :goto_0

    .line 144
    :pswitch_2
    sget-object p0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    goto :goto_0

    .line 141
    :pswitch_3
    sget-object p0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->SETUP:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isDLNADeviceConnected(Landroid/hardware/display/DisplayManager;)Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 74
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->isDLNADeviceConnected(Landroid/hardware/display/DisplayManager;)Z

    move-result p0

    return p0
.end method

.method public static isWfdSupported(Landroid/content/Context;)Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    const-string v0, "display"

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 61
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I

    move-result p0

    .line 62
    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_MIRRORING:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_ALL:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.feature.wfd_support"

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static registerDisplayVolumeKeyListener(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V
    .locals 0

    .line 160
    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->semRegisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static scanWifiDisplays(Landroid/hardware/display/DisplayManager;)V
    .locals 1

    .line 103
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semStartScanWifiDisplays()V

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->scanWifiDisplays(Landroid/hardware/display/DisplayManager;)V

    :goto_0
    return-void
.end method

.method public static semSetWifiDisplayVolumeMuted(Landroid/hardware/display/DisplayManager;Z)V
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->semSetWifiDisplayVolumeMuted(Z)V

    return-void
.end method

.method public static setActiveDlnaState(Landroid/hardware/display/DisplayManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 11

    .line 131
    new-instance v10, Landroid/hardware/display/SemDlnaDevice;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/hardware/display/SemDlnaDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    move-object v0, p0

    move/from16 v1, p8

    .line 134
    invoke-virtual {p0, v10, v1}, Landroid/hardware/display/DisplayManager;->semSetActiveDlnaState(Landroid/hardware/display/SemDlnaDevice;I)V

    return-void
.end method

.method public static setActivityState(Landroid/hardware/display/DisplayManager;I)V
    .locals 1

    .line 119
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->getWifiDisplayAppState(I)Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->setActivityState(Landroid/hardware/display/DisplayManager;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setWifiDisplayVolume(Landroid/hardware/display/DisplayManager;I)V
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->semSetWifiDisplayVolume(I)V

    return-void
.end method

.method public static stopScanWifiDisplays(Landroid/hardware/display/DisplayManager;)V
    .locals 1

    .line 111
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semStopScanWifiDisplays()V

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->stopScanWifiDisplays(Landroid/hardware/display/DisplayManager;)V

    :goto_0
    return-void
.end method

.method public static unregisterDisplayVolumeKeyListener(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/SemDisplayVolumeKeyListener;)V
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->semUnregisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;)V

    return-void
.end method
