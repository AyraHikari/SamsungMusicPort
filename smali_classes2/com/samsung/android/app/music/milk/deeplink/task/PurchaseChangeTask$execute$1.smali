.class public final Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask$execute$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask$execute$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask$execute$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;)V
    .locals 3

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;->onNext(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;->getResultCode()I

    move-result p1

    const-string v0, "PurchaseChangeTask"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reserve to Change Subscription responseCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/16 v0, 0x1771

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0b022d

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0b0136

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0b0137

    goto :goto_0

    :cond_0
    const p1, 0x7f0b027e

    goto :goto_0

    :cond_1
    const-string p1, "PurchaseChangeTask"

    const-string v0, "reserve to Change Subscription successfully"

    .line 76
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask$execute$1;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis;->a(Landroid/content/Context;)V

    const p1, 0x7f0b03c2

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask$execute$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 97
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21e1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;->onComplete()V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask$execute$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->a()V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask$execute$1;->a(Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;)V

    return-void
.end method
