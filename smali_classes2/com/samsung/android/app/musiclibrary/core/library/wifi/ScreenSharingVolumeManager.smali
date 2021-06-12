.class public Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenSharingVolumeManager"


# instance fields
.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDisplayVolumeKeyListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mSimpleAVPlayerVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;Landroid/os/Looper;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayVolumeKeyListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .line 25
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mSimpleAVPlayerVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    const-string p2, "display"

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 27
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mHandler:Landroid/os/Handler;

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->initialize()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mSimpleAVPlayerVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    return-object p0
.end method

.method private initialize()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayVolumeKeyListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->registerDisplayVolumeKeyListener(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mSimpleAVPlayerVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->setOnVolumeListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;)V

    return-void
.end method


# virtual methods
.method public initializeMute()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mSimpleAVPlayerVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->getMute()V

    return-void
.end method

.method public onSetVolume(I)V
    .locals 3

    .line 52
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVolumeListener - onSetVolume() level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->setWifiDisplayVolume(Landroid/hardware/display/DisplayManager;I)V

    return-void
.end method

.method public onUpdateMute(Z)V
    .locals 3

    .line 58
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVolumeListener - onUpdateMute() mute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->semSetWifiDisplayVolumeMuted(Landroid/hardware/display/DisplayManager;Z)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mSimpleAVPlayerVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->setOnVolumeListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->mDisplayVolumeKeyListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .line 47
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->unregisterDisplayVolumeKeyListener(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/SemDisplayVolumeKeyListener;)V

    return-void
.end method
