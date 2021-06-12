.class Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$3;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "BasketPurchasable"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " subscriptionDeductionApi response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-static {}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->a()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 117
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeduction;

    .line 120
    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeduction;->getTrackId()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeduction;->getOrderId()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v5, v4, v0, v2}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->createContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v4

    .line 123
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$3;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->b:Landroid/content/Context;

    .line 126
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->a()Landroid/net/Uri;

    move-result-object v0

    .line 125
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    const-string v0, "BasketPurchasable"

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " inserted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "purchased tracks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BasketPurchasable"

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " get purchase subscription"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 133
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;->getResultCode()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;-><init>(I)V

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

    .line 106
    check-cast p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$3;->a(Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
