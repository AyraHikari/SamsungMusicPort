.class Lcom/samsung/android/library/beaconmanager/BleScanManager$3;
.super Lcom/samsung/android/library/beaconmanager/IBleProxyCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/library/beaconmanager/BleScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$3;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    invoke-direct {p0}, Lcom/samsung/android/library/beaconmanager/IBleProxyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResultCallback(Landroid/bluetooth/le/ScanResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$3;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    invoke-static {v0}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$600(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$3;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    invoke-static {v0}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$600(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;->onScanResultCallback(Landroid/bluetooth/le/ScanResult;)V

    :cond_0
    return-void
.end method
