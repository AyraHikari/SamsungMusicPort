.class Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->b(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/subjects/PublishSubject;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

.field final synthetic c:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Lio/reactivex/subjects/PublishSubject;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->a:Lio/reactivex/subjects/PublishSubject;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 91
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    check-cast p1, Landroid/app/Dialog;

    .line 92
    invoke-virtual {p1}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->a(Landroid/app/Activity;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p2, "BasketPurchasable"

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - purchaseItemsInternal fragment is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->a:Lio/reactivex/subjects/PublishSubject;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;

    const/16 v1, -0xa

    const-string v2, "purchaseItemsInternal fragment is null"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    .line 102
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 v0, 0x14

    if-le p2, v0, :cond_1

    .line 103
    new-instance p2, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->b:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->b:Landroid/content/Context;

    const v2, 0x7f0b01cf

    .line 104
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    .line 103
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f0b02d3

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;)V

    .line 107
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f0b00cd

    .line 125
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->c(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p2

    .line 126
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "buyLimitTrack"

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->a:Lio/reactivex/subjects/PublishSubject;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    :goto_0
    return-void
.end method
