.class public Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;,
        Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$Notify;,
        Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;,
        Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-ChangeDevice"

.field private static final PREFIX:Ljava/lang/String; = "Controller   | "

.field private static final RESTART_SCAN_DEVICE:I = 0x2

.field private static final SAVED_INSTANCE_STATE_DEVICE_ID:Ljava/lang/String; = "saved_instance_state_device_id"

.field private static final SAVED_INSTANCE_STATE_NIC:Ljava/lang/String; = "saved_instance_state_nic"

.field private static final SAVED_INSTANCE_STATE_PROGRESS:Ljava/lang/String; = "saved_instance_state_progress"

.field private static final START_SCAN_DEVICE:I = 0x1

.field private static final START_SCAN_INTERVAL_TIME:I = 0x1388

.field private static final STOP_SCAN_DEVICE:I = 0x0

.field private static final STOP_SCAN_INTERVAL_TIME:I = 0x251c

.field private static final TAG:Ljava/lang/String; = "ChangeDevice"

.field private static final WINDOWS_MEDIA_PLAYER:Ljava/lang/String; = "Windows Media Player"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDisplayManagerReceiver:Landroid/content/BroadcastReceiver;

.field private final mDlnaConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mDlnaEnabled:Z

.field private mDoStartProgress:Z

.field private mIsProgress:Z

.field private final mIsWfdSupported:Z

.field private mNicId:Ljava/lang/String;

.field private mOnChangeDeviceListener:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

.field private mPlayerType:I

.field private final mScanDeviceHandler:Landroid/os/Handler;

.field private mSelectedDeviceId:Ljava/lang/String;

.field private mSelectedDeviceType:I

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mWifiState:I

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private mWmpEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mScanDeviceHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceType:I

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsProgress:Z

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDoStartProgress:Z

    .line 93
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDlnaEnabled:Z

    .line 96
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWmpEnabled:Z

    .line 385
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDlnaConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 411
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 431
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManagerReceiver:Landroid/content/BroadcastReceiver;

    .line 447
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 102
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsWfdSupported:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mScanDeviceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mPlayerType:I

    return p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWifiState:I

    return p0
.end method

.method static synthetic access$1202(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWifiState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDlnaEnabled:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWmpEnabled:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsWfdSupported:Z

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->requestScanWfdDevices()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsProgress:Z

    return p0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mNicId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->updateDeviceList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mOnChangeDeviceListener:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->requestStopScanWfdDevices()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private disconnectDevice()V
    .locals 0

    .line 303
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->changeToDefaultPlayer()V

    .line 305
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->disconnectWifiDisplay()V

    return-void
.end method

.method private disconnectWifiDisplay()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->getActiveDisplayState(Landroid/hardware/display/DisplayManager;)I

    move-result v0

    .line 310
    sget v1, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTED:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTING:I

    if-ne v0, v1, :cond_1

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->disconnectWifiDisplay(Landroid/hardware/display/DisplayManager;)V

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mOnChangeDeviceListener:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mOnChangeDeviceListener:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;->onNotify(I)V

    :cond_1
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ChangeDevice"

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller   | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerDisplayManagerReceiver()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManagerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/DisplayManagerUtils;->GLOBAL_WIFI_DISPLAY_SETTING_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 215
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerDlnaReceiver()V
    .locals 3

    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.music.dlna.servicedeleted"

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.music.dlna.connectivitychanged"

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDlnaConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerWifiStateReceiver()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestScanWfdDevices()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->isScanning(Landroid/hardware/display/DisplayManager;)Z

    move-result v0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start scan!! isScanning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->printLog(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->scanWifiDisplays(Landroid/hardware/display/DisplayManager;)V

    :cond_0
    return-void
.end method

.method private requestStopScanWfdDevices()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->isScanning(Landroid/hardware/display/DisplayManager;)Z

    move-result v0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop scan!! isScanning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->printLog(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->getActiveDisplayState(Landroid/hardware/display/DisplayManager;)I

    move-result v0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop scan!! displayState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->printLog(Ljava/lang/String;)V

    .line 343
    sget v1, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTING:I

    if-eq v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->stopScanWifiDisplays(Landroid/hardware/display/DisplayManager;)V

    :cond_0
    return-void
.end method

.method private selectDmrDevice(Ljava/lang/String;)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    const-string v1, "CHPL"

    const-string v2, "DLNA"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->changeToDmrPlayer(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->disconnectWifiDisplay()V

    return-void
.end method

.method private selectWfdDevice(Ljava/lang/String;)V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    const-string v1, "CHPL"

    const-string v2, "Screen Mirroring"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayCompat;->getDeviceAddress(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x1

    .line 294
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->setActivityState(Landroid/hardware/display/DisplayManager;I)V

    .line 295
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->changeToWfdDevice()V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget v1, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->connectWifiDisplayWithMode(Landroid/hardware/display/DisplayManager;ILjava/lang/String;)V

    const-string v0, "SMUSIC-ChangeDevice"

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller   |  selectWfdDevice() deviceAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " connect type : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDeviceList(Ljava/lang/String;)V
    .locals 2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDeviceList() nicId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " selectedDeviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->printLog(Ljava/lang/String;)V

    .line 321
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mNicId:Ljava/lang/String;

    .line 322
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getSelectedDeviceId()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "saved_instance_state_device_id"

    .line 108
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    const-string v1, "saved_instance_state_nic"

    .line 109
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mNicId:Ljava/lang/String;

    const-string v1, "saved_instance_state_progress"

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDoStartProgress:Z

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getDlnaPlayingDmrId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getDlnaPlayingNic()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mNicId:Ljava/lang/String;

    .line 114
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDoStartProgress:Z

    .line 118
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindDlna()V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "wifi"

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 128
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWifiState:I

    .line 130
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsWfdSupported:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->checkExceptionalCase(Landroid/hardware/display/DisplayManager;)I

    move-result p1

    if-nez p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    .line 134
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->setActivityState(Landroid/hardware/display/DisplayManager;I)V

    .line 135
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 136
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->setActivityState(Landroid/hardware/display/DisplayManager;I)V

    :cond_1
    return-void
.end method

.method public onDestroyCalled()V
    .locals 2

    .line 186
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsWfdSupported:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->requestStopScanWfdDevices()V

    .line 188
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->setActivityState(Landroid/hardware/display/DisplayManager;I)V

    :cond_0
    return-void
.end method

.method public onPauseCalled()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mScanDeviceHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDlnaConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsWfdSupported:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManagerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onResumeCalled()V
    .locals 4

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->registerDlnaReceiver()V

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->registerWifiStateReceiver()V

    .line 149
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsWfdSupported:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->registerDisplayManagerReceiver()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mScanDeviceHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDoStartProgress:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1388

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "saved_instance_state_device_id"

    .line 179
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "saved_instance_state_nic"

    .line 180
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mNicId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "saved_instance_state_progress"

    .line 181
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStartCalled()V
    .locals 0

    return-void
.end method

.method public onStopCalled()V
    .locals 1

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDoStartProgress:Z

    return-void
.end method

.method public selectDevice(ILjava/lang/String;)V
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectDevice() deviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " deviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->printLog(Ljava/lang/String;)V

    .line 246
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "selectDevice() selectedDeviceId is null."

    .line 247
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->printLog(Ljava/lang/String;)V

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "selectDevice() select the same device."

    .line 252
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->printLog(Ljava/lang/String;)V

    return-void

    .line 256
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    .line 257
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceType:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 263
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->selectWfdDevice(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->selectDmrDevice(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->disconnectDevice()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setChangeDeviceListener(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mOnChangeDeviceListener:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    return-void
.end method

.method public updateMetadata(ZZ)V
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDlnaEnabled:Z

    if-ne v0, p1, :cond_0

    const-string p1, "updateMetadata() It is the same."

    .line 221
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->printLog(Ljava/lang/String;)V

    return-void

    .line 224
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDlnaEnabled:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 225
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWmpEnabled:Z

    .line 226
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mScanDeviceHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 227
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mScanDeviceHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateMetadata() dlnaEnabled: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDlnaEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " WMP enabled: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWmpEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public updatePlaybackState(I)V
    .locals 1

    .line 232
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mPlayerType:I

    if-ne v0, p1, :cond_0

    const-string p1, "updatePlaybackState() It is the same."

    .line 233
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->printLog(Ljava/lang/String;)V

    return-void

    .line 236
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mPlayerType:I

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updatePlaybackState() playerType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mPlayerType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->printLog(Ljava/lang/String;)V

    return-void
.end method
