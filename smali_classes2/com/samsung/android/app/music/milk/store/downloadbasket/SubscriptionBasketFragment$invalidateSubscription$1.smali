.class public final Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$invalidateSubscription$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$invalidateSubscription$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SubscriptionBasketFragment"

    const-string v1, "update subscription"

    .line 106
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->getSubscriptionList()Ljava/util/ArrayList;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$invalidateSubscription$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;

    const-string v1, "subscriptions"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 100
    check-cast p1, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$invalidateSubscription$1;->a(Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;)V

    return-void
.end method
