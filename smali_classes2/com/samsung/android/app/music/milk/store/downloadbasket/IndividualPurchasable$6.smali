.class Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->b(Landroid/app/Activity;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/subjects/PublishSubject;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Lio/reactivex/subjects/PublishSubject;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$6;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$6;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "BasketPurchasable"

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - purchaseBlockDialog cancelled"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$6;->a:Lio/reactivex/subjects/PublishSubject;

    new-instance p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;

    const/16 v0, -0xb

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;-><init>(I)V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
