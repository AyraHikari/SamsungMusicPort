.class Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    const-string p2, "PurchaseOrderTask"

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "PurchaseOrderTask"

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->a(Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;)V

    const-string p1, "PurchaseOrderTask"

    const-string v0, "getSubscriptionList"

    .line 63
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis;->a(Landroid/content/Context;)V

    return-void
.end method
