.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingPackageEnableStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/activity/PackageEnableChecker$PackageEnableStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BillingPackageEnableStatusListener"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

.field private b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
    .locals 0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingPackageEnableStatusListener;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .line 408
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingPackageEnableStatusListener;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    const-string p1, "SamsungBilling"

    const-string v0, "billing app is now enabled!"

    .line 414
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingPackageEnableStatusListener;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->f(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 417
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingPackageEnableStatusListener;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingPackageEnableStatusListener;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    return-void

    .line 420
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingPackageEnableStatusListener;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;->a()V

    goto :goto_0

    .line 422
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingPackageEnableStatusListener;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;->a(I)V

    :goto_0
    return-void
.end method
