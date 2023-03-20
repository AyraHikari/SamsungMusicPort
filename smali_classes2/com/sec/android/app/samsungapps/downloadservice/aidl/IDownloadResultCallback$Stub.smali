.class public abstract Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;
.super Landroid/os/Binder;
.source "IDownloadResultCallback.java"

# interfaces
.implements Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onDownloadCanceled:I = 0x5

.field public static final TRANSACTION_onDownloadFailed:I = 0x4

.field public static final TRANSACTION_onDownloadSuccess:I = 0x3

.field public static final TRANSACTION_onInstallFailed:I = 0x2

.field public static final TRANSACTION_onProgress:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadResultCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadResultCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadResultCallback"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;->onDownloadCanceled()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {p0}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;->onDownloadFailed()V

    goto :goto_0

    .line 5
    :cond_3
    invoke-interface {p0}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;->onDownloadSuccess()V

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;->onInstallFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 10
    invoke-interface {p0, p3, p4, p1, p2}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;->onProgress(JJ)V

    :goto_0
    return v0

    .line 11
    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
