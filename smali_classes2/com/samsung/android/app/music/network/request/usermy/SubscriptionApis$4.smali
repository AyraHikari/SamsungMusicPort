.class final Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/samsung/android/app/music/model/purchase/Subscription;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/model/purchase/Subscription;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;->getSubscription()Lcom/samsung/android/app/music/model/purchase/Subscription;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$SubscriptionException;

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;->getResultCode()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$SubscriptionException;-><init>(I)V

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

    .line 121
    check-cast p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$4;->a(Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
