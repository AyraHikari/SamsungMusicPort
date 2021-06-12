.class Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.library.beaconmanager.IBleProxyTvCallback"

    return-object v0
.end method

.method public onScanRegisteredTv(Lcom/samsung/android/library/beaconmanager/Tv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.samsung.android.library.beaconmanager.IBleProxyTvCallback"

    .line 80
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/library/beaconmanager/Tv;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p1, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
