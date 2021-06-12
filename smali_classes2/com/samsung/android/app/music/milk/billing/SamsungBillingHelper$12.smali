.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$12;
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
        "Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V
    .locals 0

    .line 1086
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$12;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1090
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$12;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;)Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;

    const-string v0, "SamsungBilling"

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paymentDataInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$12;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->m(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lio/reactivex/Observable;

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

    .line 1086
    check-cast p1, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$12;->a(Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
