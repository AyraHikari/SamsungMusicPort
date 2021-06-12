.class Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->b()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/subjects/PublishSubject;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;Lio/reactivex/subjects/PublishSubject;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$10;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$10;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V
    .locals 2

    const-string v0, "BasketPurchasable"

    const-string v1, "get PurchasableItemId"

    .line 276
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$10;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 278
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$10;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method
