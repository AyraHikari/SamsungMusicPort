.class public abstract Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/library/beaconmanager/IBleProxyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/library/beaconmanager/IBleProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.library.beaconmanager.IBleProxyService"

.field static final TRANSACTION_getBeaconManagerVersion:I = 0x1

.field static final TRANSACTION_registerScanCallback:I = 0x4

.field static final TRANSACTION_registerTvCallback:I = 0x2

.field static final TRANSACTION_unregisterScanCallback:I = 0x5

.field static final TRANSACTION_unregisterTvCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.library.beaconmanager.IBleProxyService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/library/beaconmanager/IBleProxyService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.library.beaconmanager.IBleProxyService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "com.samsung.android.library.beaconmanager.IBleProxyService"

    .line 93
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/library/beaconmanager/IBleProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;->unregisterScanCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;)Z

    move-result p1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1
    const-string p1, "com.samsung.android.library.beaconmanager.IBleProxyService"

    .line 77
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/library/beaconmanager/IBleProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    move-result-object p1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;->registerScanCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2
    const-string p1, "com.samsung.android.library.beaconmanager.IBleProxyService"

    .line 67
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;->unregisterTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;)Z

    move-result p1

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_3
    const-string p1, "com.samsung.android.library.beaconmanager.IBleProxyService"

    .line 55
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    move-result-object p1

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;->registerTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;I)Z

    move-result p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_4
    const-string p1, "com.samsung.android.library.beaconmanager.IBleProxyService"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;->getBeaconManagerVersion()I

    move-result p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_0
    const-string p1, "com.samsung.android.library.beaconmanager.IBleProxyService"

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
