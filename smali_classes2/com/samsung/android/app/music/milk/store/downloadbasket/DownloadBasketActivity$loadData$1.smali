.class public final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$loadData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->b(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$loadData$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DownloadBasketActivity"

    const-string v1, "verifiedTrack"

    .line 312
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$loadData$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "DownloadBasketActivity"

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " checkUnavailable activity is already destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "activity is already destroyed"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.error(Throwab\u2026y is already destroyed\"))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 321
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->getSubscriptionList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "subscriptions"

    .line 322
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$loadData$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;ILjava/util/ArrayList;)V

    .line 325
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->getDrmSubscription()Lcom/samsung/android/app/music/model/purchase/DrmSubscription;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 326
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/DrmSubscription;->toSimpleSubscription()Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;

    move-result-object p1

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$loadData$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;ILjava/util/ArrayList;)V

    .line 331
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.just(true)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 309
    check-cast p1, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$loadData$1;->a(Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
