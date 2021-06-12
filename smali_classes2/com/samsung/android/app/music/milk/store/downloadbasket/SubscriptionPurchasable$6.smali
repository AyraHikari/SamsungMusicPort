.class Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$6;
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
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$6;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 236
    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    .line 238
    instance-of p2, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/TabSelectable;

    if-eqz p2, :cond_0

    .line 239
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/TabSelectable;

    const/4 p2, 0x2

    .line 240
    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/TabSelectable;->d(I)V

    :cond_0
    return-void
.end method
