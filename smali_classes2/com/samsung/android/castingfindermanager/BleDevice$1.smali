.class Lcom/samsung/android/castingfindermanager/BleDevice$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/castingfindermanager/BleDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/castingfindermanager/BleDevice;


# direct methods
.method constructor <init>(Lcom/samsung/android/castingfindermanager/BleDevice;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/BleDevice$1;->a:Lcom/samsung/android/castingfindermanager/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleDevice$1;->a:Lcom/samsung/android/castingfindermanager/BleDevice;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/BleDevice;->b(Lcom/samsung/android/castingfindermanager/BleDevice;)Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/BleDevice$1;->a:Lcom/samsung/android/castingfindermanager/BleDevice;

    invoke-static {v1}, Lcom/samsung/android/castingfindermanager/BleDevice;->a(Lcom/samsung/android/castingfindermanager/BleDevice;)Lcom/samsung/android/library/beaconmanager/Tv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;->a(Ljava/lang/String;)V

    return-void
.end method
