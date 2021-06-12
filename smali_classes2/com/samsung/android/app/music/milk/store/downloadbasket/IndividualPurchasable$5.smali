.class Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->c(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lio/reactivex/subjects/PublishSubject;

.field final synthetic c:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Ljava/util/ArrayList;Lio/reactivex/subjects/PublishSubject;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->b:Lio/reactivex/subjects/PublishSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 172
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->b:Lio/reactivex/subjects/PublishSubject;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;

    const/16 v1, -0xa

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const-string v0, "BasketPurchasable"

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " + onSuccess orderId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 158
    invoke-static {}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 159
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 160
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p1, v1, v2}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->createContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->b:Landroid/content/Context;

    .line 164
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->b:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->b:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method
