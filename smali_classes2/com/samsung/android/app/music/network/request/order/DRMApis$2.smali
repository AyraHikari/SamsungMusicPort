.class final Lcom/samsung/android/app/music/network/request/order/DRMApis$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/order/DRMApis;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/UserInfo;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/order/DRMApis$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/order/DRMApis$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/network/request/order/DRMApis$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/network/request/order/DRMApis$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/UserInfo;",
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

    .line 32
    iget-object p1, p0, Lcom/samsung/android/app/music/network/request/order/DRMApis$2;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/request/order/OrderTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/request/order/OrderTransport;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/order/DRMApis$2;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/order/DRMApis$2;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/request/order/DRMApis$2;->d:Ljava/lang/String;

    .line 33
    invoke-interface {p1, v0, v1, v2}, Lcom/samsung/android/app/music/network/request/order/OrderTransport;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

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

    .line 29
    check-cast p1, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/order/DRMApis$2;->a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
