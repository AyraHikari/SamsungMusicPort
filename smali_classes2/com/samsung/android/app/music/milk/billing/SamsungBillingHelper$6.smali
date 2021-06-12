.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->c(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

.field final synthetic b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "SamsungBilling"

    const-string v1, "startDownloadByPackageName onDownloadSuccess"

    .line 587
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->i(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6$1;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;)V

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(JJ)V
    .locals 6

    const-string v0, "SamsungBilling"

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownloadByPackageName onProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%d / %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 617
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p1, p1, p3

    if-ltz p1, :cond_0

    .line 619
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .line 620
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->h(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0b0169

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 619
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .line 623
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->h(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0b0110

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 622
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstallFailed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SamsungBilling"

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownloadByPackageName onInstallFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;I)V

    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "SamsungBilling"

    const-string v1, "startDownloadByPackageName onDownloadFailed"

    .line 598
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;I)V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "SamsungBilling"

    const-string v1, "startDownloadByPackageName onDownloadCanceled"

    .line 604
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;I)V

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "SamsungBilling"

    const-string v1, "startDownloadByPackageName onBindFailed"

    .line 610
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;I)V

    return-void
.end method
