.class final Lcom/samsung/android/app/music/network/request/order/DownloadBasketApis$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/order/DownloadBasketApis;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/order/DownloadBasketApis$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/order/DownloadBasketApis$1;->b:Landroid/content/Context;

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
            "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "DownloadBasketApis"

    const-string v1, "verifiedTrack"

    .line 25
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/order/DownloadBasketApis$1;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/order/DownloadBasketApis$1;->b:Landroid/content/Context;

    .line 30
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->a()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/network/request/order/DownloadBasketApis$1;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->toContentValuesOrderArray(Ljava/lang/String;)[Landroid/content/ContentValues;

    move-result-object v2

    .line 30
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 34
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 36
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/network/request/order/DownloadBasketApis$DownloadBasketException;

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->getResultCode()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/request/order/DownloadBasketApis$DownloadBasketException;-><init>(I)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    check-cast p1, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/order/DownloadBasketApis$1;->a(Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
