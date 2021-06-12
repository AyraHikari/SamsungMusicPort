.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;
.super Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->d:Ljava/lang/String;

    return-object p0
.end method

.method private b(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->a(Landroid/app/Activity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;->l()Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    new-instance p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;

    const/16 v0, -0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "purchaseItemsInternal subscription is null. isDestroyed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;-><init>(ILjava/lang/String;)V

    .line 95
    invoke-static {p2}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;->getOrderId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->d:Ljava/lang/String;

    const-string p1, "BasketPurchasable"

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " get order id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p2}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->b(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;Landroid/app/Activity;)V

    .line 44
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V

    .line 57
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
