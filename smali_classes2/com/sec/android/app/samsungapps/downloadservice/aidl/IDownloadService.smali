.class public interface abstract Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;
.super Ljava/lang/Object;
.source "IDownloadService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService$Stub;,
        Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadService"


# virtual methods
.method public abstract downloadByPackageName(Ljava/lang/String;Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;)V
.end method

.method public abstract downloadByProductId(Ljava/lang/String;Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;)V
.end method
