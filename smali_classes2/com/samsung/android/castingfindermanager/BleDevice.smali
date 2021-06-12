.class Lcom/samsung/android/castingfindermanager/BleDevice;
.super Lcom/samsung/android/castingfindermanager/Device;
.source "SourceFile"


# instance fields
.field private a:Lcom/samsung/android/library/beaconmanager/Tv;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;

.field private e:Z

.field private f:I

.field private final g:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/library/beaconmanager/Tv;Landroid/os/Handler;Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/Device;-><init>()V

    .line 78
    new-instance v0, Lcom/samsung/android/castingfindermanager/BleDevice$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/castingfindermanager/BleDevice$1;-><init>(Lcom/samsung/android/castingfindermanager/BleDevice;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->g:Ljava/lang/Runnable;

    .line 22
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->b:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->a:Lcom/samsung/android/library/beaconmanager/Tv;

    .line 24
    iput-object p3, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->c:Landroid/os/Handler;

    .line 25
    iput-object p4, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->d:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;

    .line 26
    iput p5, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->f:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/BleDevice;)Lcom/samsung/android/library/beaconmanager/Tv;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->a:Lcom/samsung/android/library/beaconmanager/Tv;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/castingfindermanager/BleDevice;)Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->d:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->a:Lcom/samsung/android/library/beaconmanager/Tv;

    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->a:Lcom/samsung/android/library/beaconmanager/Tv;

    invoke-virtual {v0, p1}, Lcom/samsung/android/library/beaconmanager/Tv;->setStatus(I)Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->a:Lcom/samsung/android/library/beaconmanager/Tv;

    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getP2pMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->f:I

    return v0
.end method

.method public d()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->e:Z

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->e:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->a:Lcom/samsung/android/library/beaconmanager/Tv;

    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->a:Lcom/samsung/android/library/beaconmanager/Tv;

    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getStatus()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public i()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->a:Lcom/samsung/android/library/beaconmanager/Tv;

    invoke-virtual {v1}, Lcom/samsung/android/library/beaconmanager/Tv;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRegistred: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/BleDevice;->a:Lcom/samsung/android/library/beaconmanager/Tv;

    invoke-virtual {v1}, Lcom/samsung/android/library/beaconmanager/Tv;->getProductYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/castingfindermanager/Device;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
