.class Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$1;
.super Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$1;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$1;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    invoke-static {p1}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;)Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

    return-void
.end method
