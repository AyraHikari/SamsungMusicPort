.class public Lcom/samsung/android/app/music/activity/BillingPackageEnableChecker;
.super Lcom/samsung/android/app/music/activity/PackageEnableChecker;
.source "SourceFile"


# instance fields
.field private c:J

.field private d:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/activity/PackageEnableChecker$PackageEnableStatusListener;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/activity/PackageEnableChecker;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/activity/PackageEnableChecker$PackageEnableStatusListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/activity/BillingPackageEnableChecker;->c:J

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BillingPackageEnableChecker;->d:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    return-void
.end method

.method protected b()Z
    .locals 4

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/activity/BillingPackageEnableChecker;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BillingPackageEnableChecker;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->checkSamsungBilling()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BillingPackageEnableChecker;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "SamsungBilling"

    const-string v1, "billing package has been enabled, but didn\'t meet the deadline(10s)"

    .line 55
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/PackageEnableChecker;->onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V

    .line 68
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BillingPackageEnableChecker;->d:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BillingPackageEnableChecker;->d:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
