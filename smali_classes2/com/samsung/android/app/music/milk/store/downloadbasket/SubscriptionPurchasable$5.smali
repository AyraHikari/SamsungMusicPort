.class Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->c(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

.field final synthetic b:I

.field final synthetic c:Lio/reactivex/subjects/PublishSubject;

.field final synthetic d:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;ILio/reactivex/subjects/PublishSubject;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->d:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iput p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->b:I

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->c:Lio/reactivex/subjects/PublishSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 168
    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    .line 169
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->b:I

    if-le p2, v0, :cond_0

    .line 170
    new-instance p2, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->d:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b01cb

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->d:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->b:Landroid/content/Context;

    .line 172
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0015

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->c:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v5, v5, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->c:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 173
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const-string v0, "944"

    .line 177
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f0b02d3

    const-string v1, "9433"

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;)V

    .line 179
    invoke-virtual {p2, v0, v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f0b00cd

    const-string v1, "9432"

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;)V

    .line 196
    invoke-virtual {p2, v0, v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    .line 207
    invoke-virtual {p2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p2

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    .line 208
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "notEnough"

    .line 207
    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->c:Lio/reactivex/subjects/PublishSubject;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 211
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->c:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    :goto_0
    return-void
.end method
