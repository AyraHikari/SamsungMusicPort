.class Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->onInstallFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$2;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$2;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->b(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Ljava/lang/String;)V

    return-void
.end method
