.class public Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdlWifiDeviceInfo"
.end annotation


# instance fields
.field deviceAddress:Ljava/lang/String;

.field deviceName:Ljava/lang/String;

.field primaryDeviceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;->deviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryDeviceType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/WifiDisplayStatusSdlCompat$SdlWifiDeviceInfo;->primaryDeviceType:Ljava/lang/String;

    return-object v0
.end method
