.class Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 111
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    check-cast p1, Landroid/app/Dialog;

    .line 112
    invoke-virtual {p1}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    .line 111
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->a(Landroid/app/Activity;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->a:Lio/reactivex/subjects/PublishSubject;

    new-instance p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;

    const/16 v0, -0xa

    const-string v1, "purchaseItemsInternal fragment is null"

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->a(I)Ljava/util/ArrayList;

    .line 122
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->a:Lio/reactivex/subjects/PublishSubject;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method
