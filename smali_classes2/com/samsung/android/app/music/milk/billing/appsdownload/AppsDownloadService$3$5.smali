.class Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->onDownloadCanceled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$5;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$5;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V

    return-void
.end method
