.class Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$2;
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
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;Landroid/app/Activity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$2;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "BasketPurchasable"

    const-string v1, "check drm"

    .line 48
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$2;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->b:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->a:Ljava/util/ArrayList;

    .line 50
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$2;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "@"

    .line 53
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$2;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "00"

    .line 52
    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/app/music/network/request/order/DRMApis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

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

    .line 44
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable$2;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
