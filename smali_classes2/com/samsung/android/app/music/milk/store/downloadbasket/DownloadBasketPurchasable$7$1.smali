.class Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/subjects/PublishSubject;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

.field final synthetic c:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7;Lio/reactivex/subjects/PublishSubject;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7$1;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7$1;->a:Lio/reactivex/subjects/PublishSubject;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7$1;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 249
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7$1;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 251
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;-><init>()V

    .line 252
    iget-object p2, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7$1;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p2, 0x0

    .line 253
    iput p2, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;->c:I

    const/4 p2, 0x0

    .line 254
    iput-object p2, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;->b:Ljava/lang/String;

    .line 256
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7$1;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->c:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p2, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 257
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7$1;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->c:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method
