.class Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5$2;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 186
    check-cast p1, Landroid/app/Dialog;

    .line 188
    invoke-virtual {p1}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5$2;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5$2;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;

    iget p2, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->b:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->a(I)Ljava/util/ArrayList;

    .line 193
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5$2;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->c:Lio/reactivex/subjects/PublishSubject;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5$2;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 194
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5$2;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->c:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method
