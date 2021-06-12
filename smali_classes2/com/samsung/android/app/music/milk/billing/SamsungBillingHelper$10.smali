.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/String;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Landroid/content/Context;)V
    .locals 0

    .line 1100
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$10;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$10;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SamsungBilling"

    .line 1103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get paymentReceipt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1106
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$10;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    const-string v2, "orderID"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "SamsungBilling"

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get orderId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$10;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->e(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1109
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1112
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$10;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$10;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$10;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->l(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Landroid/content/Context;Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;Ljava/lang/String;)Lio/reactivex/Observable;

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

    .line 1100
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$10;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
