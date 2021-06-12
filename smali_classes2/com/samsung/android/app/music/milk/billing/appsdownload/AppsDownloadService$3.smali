.class Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;
.super Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    invoke-direct {p0}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCanceled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$5;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDownloadFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$4;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDownloadSuccess()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$3;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInstallFailed(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$2;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProgress(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->b:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
