.class Lcom/samsung/android/castingfindermanager/BleAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/castingfindermanager/BleAdapter;
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

    .line 157
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$2;->a:Lcom/samsung/android/castingfindermanager/BleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onScanRegisteredTv(Lcom/samsung/android/library/beaconmanager/Tv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$2;->a:Lcom/samsung/android/castingfindermanager/BleAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/BleAdapter;->d(Lcom/samsung/android/castingfindermanager/BleAdapter;)Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->a(ILjava/lang/Object;)V

    return-void
.end method
