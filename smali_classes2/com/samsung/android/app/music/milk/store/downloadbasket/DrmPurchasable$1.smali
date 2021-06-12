.class Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->a(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$1;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
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

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BasketPurchasable"

    const-string v1, "checked drm"

    .line 62
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->getVerifiedTracks()Ljava/util/ArrayList;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 66
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;-><init>()V

    .line 67
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$1;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;->b:Ljava/lang/String;

    .line 69
    iput v1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;->c:I

    .line 71
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$1;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->b:Landroid/content/Context;

    const-string v0, "Fail check license"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 76
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;

    const/16 v0, -0xa

    const-string v1, "Fail check license"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 81
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->getResultCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;-><init>(ILjava/lang/String;)V

    .line 82
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

    .line 57
    check-cast p1, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$1;->a(Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
