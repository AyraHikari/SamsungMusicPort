.class Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->onProgress(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;JJ)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;->c:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    iput-wide p2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;->a:J

    iput-wide p4, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;->c:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-wide v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;->a:J

    iget-wide v3, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;->b:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;JJ)V

    return-void
.end method
