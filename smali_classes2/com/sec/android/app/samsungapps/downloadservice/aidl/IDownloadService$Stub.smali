.class public abstract Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadService"

.field static final TRANSACTION_downloadByPackageName:I = 0x1

.field static final TRANSACTION_downloadByProductId:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 59
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;

    move-result-object p2

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService$Stub;->downloadByProductId(Ljava/lang/String;Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;

    move-result-object p2

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService$Stub;->downloadByPackageName(Ljava/lang/String;Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
