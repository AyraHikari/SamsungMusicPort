.class Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V

    return-void
.end method
