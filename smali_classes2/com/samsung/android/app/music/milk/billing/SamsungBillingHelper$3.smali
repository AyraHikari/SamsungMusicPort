.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .line 337
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->d(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->e(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "SamsungBilling"

    const-string v1, "observableBuyProduct complete"

    .line 310
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->c(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 316
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->c(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;->sendEmptyMessage(I)Z

    .line 319
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$PaymentDataException;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    check-cast p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$PaymentDataException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$PaymentDataException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(I)V

    .line 321
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$PaymentDataException;->getErrorCode()I

    move-result p1

    goto :goto_0

    .line 322
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    check-cast p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;->getErrorCode()I

    move-result v1

    .line 324
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;ILjava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;->getErrorCode()I

    move-result p1

    goto :goto_0

    .line 326
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;

    if-eqz v0, :cond_2

    const-string v0, "SamsungBilling"

    .line 327
    check-cast p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, -0x1

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->d(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->d(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    move-result-object v0

    const-string v1, "fail to purchase"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;->a(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 307
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->a(Ljava/lang/Boolean;)V

    return-void
.end method
