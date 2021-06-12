.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
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

    .line 350
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    if-eqz p1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    goto :goto_0

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    :goto_0
    return-void
.end method
