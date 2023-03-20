.class public interface abstract Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;
.super Ljava/lang/Object;
.source "IDownloadResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;,
        Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadResultCallback"


# virtual methods
.method public abstract onDownloadCanceled()V
.end method

.method public abstract onDownloadFailed()V
.end method

.method public abstract onDownloadSuccess()V
.end method

.method public abstract onInstallFailed(Ljava/lang/String;)V
.end method

.method public abstract onProgress(JJ)V
.end method
