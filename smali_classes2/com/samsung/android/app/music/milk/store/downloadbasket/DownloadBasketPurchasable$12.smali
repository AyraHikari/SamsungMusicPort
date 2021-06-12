.class Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->a(Landroid/content/Context;[J)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;[JLandroid/content/Context;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$12;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$12;->a:[J

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$12;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "BasketPurchasable"

    const-string v1, "deleteDownloadBasket"

    .line 409
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "audio_id"

    .line 412
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$12;->a:[J

    .line 413
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$12;->b:Landroid/content/Context;

    .line 416
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->a()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "BasketPurchasable"

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDownloadBasket cnt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$12;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$DownloadBasket;->a(Landroid/content/Context;)I

    move-result v0

    const-string v1, "BasketPurchasable"

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remain track cnt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 425
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
