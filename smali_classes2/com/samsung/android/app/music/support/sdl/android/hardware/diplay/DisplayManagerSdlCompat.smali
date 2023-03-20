.class public Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;
.super Ljava/lang/Object;
.source "DisplayManagerSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$BaseDisplayManagerCompatImpl;,
        Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$MarshmallowDisplayManagerCompatImpl;,
        Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;
    }
.end annotation


# static fields
.field public static final CONN_STATE_CHANGEPLAYER_MUSIC:I

.field private static final IMPL:Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;

.field private static final NORMAL:I = 0x0

.field private static final UNDEFINED:I = -0x1

.field public static final WFD_APP_STATE_PAUSE:I = 0x2

.field public static final WFD_APP_STATE_RESUME:I = 0x1

.field public static final WFD_APP_STATE_SETUP:I = 0x0

.field public static final WFD_APP_STATE_TEARDOWN:I = 0x3

.field public static final WIFIDISPLAY_SESSION_STATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x836

    const/16 v1, 0x8

    .line 2
    sput v1, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    const/16 v1, 0x8fd

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$MarshmallowDisplayManagerCompatImpl;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$MarshmallowDisplayManagerCompatImpl;-><init>(Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$1;)V

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->IMPL:Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$BaseDisplayManagerCompatImpl;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$BaseDisplayManagerCompatImpl;-><init>(Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$1;)V

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->IMPL:Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExceptionalCase(Landroid/hardware/display/DisplayManager;)I
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->checkExceptionalCase()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->IMPL:Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;->checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I

    move-result p0

    return p0
.end method

.method public static connectWifiDisplayWithMode(Landroid/hardware/display/DisplayManager;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->connectWifiDisplayWithMode(ILjava/lang/String;)V

    return-void
.end method

.method public static disconnectWifiDisplay(Landroid/hardware/display/DisplayManager;)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    return-void
.end method

.method private static getWfdAppState(I)Landroid/hardware/display/DisplayManager$WfdAppState;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p0, Landroid/hardware/display/DisplayManager$WfdAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$WfdAppState;

    goto :goto_0

    .line 2
    :cond_1
    sget-object p0, Landroid/hardware/display/DisplayManager$WfdAppState;->PAUSE:Landroid/hardware/display/DisplayManager$WfdAppState;

    goto :goto_0

    .line 3
    :cond_2
    sget-object p0, Landroid/hardware/display/DisplayManager$WfdAppState;->RESUME:Landroid/hardware/display/DisplayManager$WfdAppState;

    goto :goto_0

    .line 4
    :cond_3
    sget-object p0, Landroid/hardware/display/DisplayManager$WfdAppState;->SETUP:Landroid/hardware/display/DisplayManager$WfdAppState;

    :goto_0
    return-object p0
.end method

.method public static isDLNADeviceConnected(Landroid/hardware/display/DisplayManager;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->IMPL:Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;->isDLNADeviceConnected(Landroid/hardware/display/DisplayManager;)Z

    move-result p0

    return p0
.end method

.method public static scanWifiDisplays(Landroid/hardware/display/DisplayManager;)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    return-void
.end method

.method public static setActivityState(Landroid/hardware/display/DisplayManager;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->getWfdAppState(I)Landroid/hardware/display/DisplayManager$WfdAppState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    :cond_0
    return-void
.end method

.method public static stopScanWifiDisplays(Landroid/hardware/display/DisplayManager;)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->stopScanWifiDisplays()V

    return-void
.end method
