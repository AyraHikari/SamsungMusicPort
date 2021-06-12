.class public interface abstract Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService$Stub;
    }
.end annotation


# virtual methods
.method public abstract downloadByPackageName(Ljava/lang/String;Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract downloadByProductId(Ljava/lang/String;Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
