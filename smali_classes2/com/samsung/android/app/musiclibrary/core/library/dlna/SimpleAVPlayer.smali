.class public Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;
.super Lcom/samsung/android/allshare/extension/SECAVPlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Dlna"

.field private static final TAG:Ljava/lang/String; = "SV-Dlna"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

.field private mOnDeviceErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/allshare/media/AVPlayer;Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;-><init>(Lcom/samsung/android/allshare/media/AVPlayer;Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDmrStatusInfo()Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->mInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    return-object v0
.end method

.method public onDeviceChanged(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V
    .locals 3

    .line 40
    invoke-super {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->onDeviceChanged(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V

    .line 41
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->CONTENT_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p2}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-SV-Dlna"

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceChanged() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", err:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->mOnDeviceErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->mOnDeviceErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;->onError(Lcom/samsung/android/allshare/ERROR;)V

    :cond_0
    return-void
.end method

.method setDmrStatusInfo(Lcom/samsung/android/allshare/Device;)V
    .locals 8

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/samsung/android/allshare/Device$InformationType;->P2P_MAC_ADDRESS:Lcom/samsung/android/allshare/Device$InformationType;

    .line 54
    invoke-virtual {p1, v1}, Lcom/samsung/android/allshare/Device;->getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getNIC()Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->mInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    return-void
.end method

.method setOnDeviceErrorListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->mOnDeviceErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;

    return-void
.end method
