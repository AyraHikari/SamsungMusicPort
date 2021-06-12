.class final Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis;->b(Landroid/content/Context;)Lio/reactivex/Observable;
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
        "Lio/reactivex/ObservableSource<",
        "Lcom/samsung/android/app/music/model/purchase/SubscriptionList;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/model/purchase/SubscriptionList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isAccountSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$1;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object p1

    const/16 v0, 0x57b

    .line 37
    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->b(I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$AccountSigninException;

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$AccountSigninException;-><init>(I)V

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

    .line 30
    check-cast p1, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$1;->a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
