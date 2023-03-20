.class public final Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;
.super Ljava/lang/Object;
.source "DisplayManagerCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat$DisplayVolumeKeyListener;
    }
.end annotation


# static fields
.field public static final CONN_STATE_CHANGEPLAYER_MUSIC:I

.field public static final INSTANCE:Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;

.field private static final WFD_APP_STATE_PAUSE:I = 0x2

.field public static final WFD_APP_STATE_RESUME:I = 0x1

.field public static final WFD_APP_STATE_SETUP:I = 0x0

.field public static final WFD_APP_STATE_TEARDOWN:I = 0x3

.field public static final WIFI_DISPLAY_SOURCE_STATE:Ljava/lang/String;

.field private static checkScreenSharingSupported:Ljava/lang/Integer;

.field private static final observers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat$DisplayVolumeKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static semConnectWifiDisplay:Ljava/lang/reflect/Method;

.field private static semDisplayVolumeKeyListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;

    invoke-direct {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->INSTANCE:Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    .line 2
    :cond_0
    sget v1, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    .line 3
    :goto_0
    sput v1, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    goto :goto_1

    :cond_1
    const-string v0, "android.intent.action.WIFI_DISPLAY"

    .line 4
    :goto_1
    sput-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->WIFI_DISPLAY_SOURCE_STATE:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getObservers$p()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private final displayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/hardware/display/DisplayManager;

    return-object p1
.end method

.method private final getWifiDisplayAppState(I)Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->PAUSE:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    goto :goto_0

    .line 3
    :cond_2
    sget-object p1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    goto :goto_0

    .line 4
    :cond_3
    sget-object p1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->SETUP:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    :goto_0
    return-object p1
.end method

.method private final semConnectWifiDisplay(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->semConnectWifiDisplay:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    const-class v0, Landroid/hardware/display/DisplayManager;

    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "semConnectWifiDisplay"

    .line 3
    invoke-static {v0, v5, v4}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->getReflectionMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    sput-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->semConnectWifiDisplay:Ljava/lang/reflect/Method;

    :cond_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    aput-object p3, v3, v1

    invoke-static {v0, p1, v3}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final checkExceptionalCase(Landroid/hardware/display/DisplayManager;)I
    .locals 1

    const-string v0, "dm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->semCheckExceptionalCase()I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->checkExceptionalCase(Landroid/hardware/display/DisplayManager;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final checkScreenSharingSupported(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->checkScreenSharingSupported:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->displayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    move-result-object p1

    .line 3
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->semCheckScreenSharingSupported()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6
    :goto_0
    sput-object p1, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->checkScreenSharingSupported:Ljava/lang/Integer;

    .line 7
    :cond_1
    sget-object p1, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->checkScreenSharingSupported:Ljava/lang/Integer;

    invoke-static {p1}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final connectWifiDisplayWithMode(Landroid/hardware/display/DisplayManager;ILjava/lang/String;)V
    .locals 2

    const-string v0, "dm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->semConnectWifiDisplay(Ljava/lang/Object;ILjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->connectWifiDisplayWithMode(Landroid/hardware/display/DisplayManager;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final disconnectWifiDisplay(Landroid/hardware/display/DisplayManager;)V
    .locals 1

    const-string v0, "dm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->semDisconnectWifiDisplay()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->disconnectWifiDisplay(Landroid/hardware/display/DisplayManager;)V

    :goto_0
    return-void
.end method

.method public final getActiveDlnaDevice(Landroid/content/Context;)Landroid/hardware/display/SemDlnaDevice;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->displayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object p1

    return-object p1
.end method

.method public final isDLNADeviceConnected(Landroid/hardware/display/DisplayManager;)Z
    .locals 2

    const-string v0, "dm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->isDLNADeviceConnected(Landroid/hardware/display/DisplayManager;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public final isWfdSupported(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->checkScreenSharingSupported(Landroid/content/Context;)I

    move-result p1

    .line 3
    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_MIRRORING:I

    if-eq p1, v0, :cond_1

    .line 4
    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_ALL:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.sec.feature.wfd_support"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public final registerDisplayVolumeKeyListener(Landroid/hardware/display/DisplayManager;Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat$DisplayVolumeKeyListener;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "dm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->semDisplayVolumeKeyListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat$registerDisplayVolumeKeyListener$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat$registerDisplayVolumeKeyListener$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->semDisplayVolumeKeyListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .line 3
    invoke-virtual {p1, v0, p3}, Landroid/hardware/display/DisplayManager;->semRegisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V

    .line 4
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final scanWifiDisplays(Landroid/hardware/display/DisplayManager;)V
    .locals 1

    const-string v0, "dm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->semStartScanWifiDisplays()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->scanWifiDisplays(Landroid/hardware/display/DisplayManager;)V

    :goto_0
    return-void
.end method

.method public final setActiveDlnaState(Landroid/hardware/display/DisplayManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 12

    move-object v0, p1

    const-string v1, "dm"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Landroid/hardware/display/SemDlnaDevice;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Landroid/hardware/display/SemDlnaDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    move/from16 v2, p9

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/hardware/display/DisplayManager;->semSetActiveDlnaState(Landroid/hardware/display/SemDlnaDevice;I)V

    return-void
.end method

.method public final setActivityState(Landroid/hardware/display/DisplayManager;I)V
    .locals 1

    const-string v0, "dm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->getWifiDisplayAppState(I)Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->setActivityState(Landroid/hardware/display/DisplayManager;I)V

    :goto_0
    return-void
.end method

.method public final setWifiDisplayVolume(Landroid/hardware/display/DisplayManager;I)V
    .locals 1

    const-string v0, "dm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->semSetWifiDisplayVolume(I)V

    return-void
.end method

.method public final setWifiDisplayVolumeMuted(Landroid/hardware/display/DisplayManager;Z)V
    .locals 1

    const-string v0, "dm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->semSetWifiDisplayVolumeMuted(Z)V

    return-void
.end method

.method public final stopScanWifiDisplays(Landroid/hardware/display/DisplayManager;)V
    .locals 1

    const-string v0, "dm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->semStopScanWifiDisplays()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;->stopScanWifiDisplays(Landroid/hardware/display/DisplayManager;)V

    :goto_0
    return-void
.end method

.method public final unregisterDisplayVolumeKeyListener(Landroid/hardware/display/DisplayManager;Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat$DisplayVolumeKeyListener;)V
    .locals 2

    const-string v0, "dm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    sget-object p2, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->semDisplayVolumeKeyListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->semUnregisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;)V

    const/4 p1, 0x0

    .line 6
    sput-object p1, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->semDisplayVolumeKeyListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    :cond_2
    :goto_0
    return-void
.end method
