.class Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->a(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Integer;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "BasketPurchasable"

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : onNext inserted item count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;-><init>()V

    .line 62
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 63
    iput v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;->c:I

    .line 64
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

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

    .line 56
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->a(Ljava/lang/Integer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
