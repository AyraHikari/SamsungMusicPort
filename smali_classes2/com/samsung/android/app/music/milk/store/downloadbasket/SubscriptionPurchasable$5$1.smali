.class Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5$1;
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

    .line 198
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "BasketPurchasable"

    .line 203
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - confirmPurchaseDialog cancelled"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;->c:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method
