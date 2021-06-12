.class public Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiDeviceInfo"
.end annotation


# instance fields
.field deviceAddress:Ljava/lang/String;

.field deviceName:Ljava/lang/String;

.field primaryDeviceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->deviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryDeviceType()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->primaryDeviceType:Ljava/lang/String;

    return-object v0
.end method
