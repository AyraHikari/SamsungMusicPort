.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V
    .locals 0

    .line 1018
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$7;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SamsungBilling"

    .line 1022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Payment Data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$7;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/AndroidUtils;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1026
    new-instance p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;

    const-string v0, "Stop billing. The host activity is being finished or already released."

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 1031
    new-instance p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;

    const-string v0, "Fail billing. Server gives null as payment data"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 1035
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getResultCode()I

    move-result v0

    if-nez v0, :cond_3

    .line 1036
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$7;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->g(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$7;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .line 1037
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->g(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1038
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$7;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->g(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->setVoucherId(Ljava/lang/String;)V

    .line 1041
    :cond_2
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 1043
    :cond_3
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$PaymentDataException;

    .line 1044
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getResultCode()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$PaymentDataException;-><init>(I)V

    .line 1043
    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1018
    check-cast p1, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$7;->a(Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
