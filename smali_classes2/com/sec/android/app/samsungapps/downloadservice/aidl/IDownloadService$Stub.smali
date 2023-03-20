.class public abstract Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService$Stub;
.super Landroid/os/Binder;
.source "IDownloadService.java"

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
.field public static final TRANSACTION_downloadByPackageName:I = 0x1

.field public static final TRANSACTION_downloadByProductId:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

    return-object v0

    .line 4
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

    const/4 v0, 0x1

    const-string v1, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadService"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;

    move-result-object p2

    .line 5
    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;->downloadByProductId(Ljava/lang/String;Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;

    move-result-object p2

    .line 9
    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;->downloadByPackageName(Ljava/lang/String;Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v0

    .line 11
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
