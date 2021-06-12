.class Lcom/samsung/android/castingfindermanager/BleAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/castingfindermanager/BleAdapter;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/castingfindermanager/BleAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/castingfindermanager/BleAdapter;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$1;->a:Lcom/samsung/android/castingfindermanager/BleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 4

    const-string v0, "BleAdapter"

    const-string v1, "onServiceConnected"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$1;->a:Lcom/samsung/android/castingfindermanager/BleAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/BleAdapter;->b(Lcom/samsung/android/castingfindermanager/BleAdapter;)Lcom/samsung/android/library/beaconmanager/BleScanManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$1;->a:Lcom/samsung/android/castingfindermanager/BleAdapter;

    invoke-static {v1}, Lcom/samsung/android/castingfindermanager/BleAdapter;->a(Lcom/samsung/android/castingfindermanager/BleAdapter;)Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->registerTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;I)Z

    move-result v0

    const-string v1, "BleAdapter"

    if-eqz v0, :cond_0

    const-string v0, "registerTvCallback Success"

    goto :goto_0

    :cond_0
    const-string v0, "registerTvCallback Fail"

    .line 67
    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "BleAdapter"

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerTvCallback exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$1;->a:Lcom/samsung/android/castingfindermanager/BleAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/BleAdapter;->c(Lcom/samsung/android/castingfindermanager/BleAdapter;)V

    return-void
.end method
