.class public Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$AccountSigninException;,
        Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$SubscriptionException;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/purchase/Subscription;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object p0

    const/16 v0, 0x587

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->a(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p0

    .line 120
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$4;

    invoke-direct {p1}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$4;-><init>()V

    .line 121
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object v0

    const-string v1, "02"

    const v2, 0x22474

    .line 139
    invoke-interface {v0, v2, p1, p2, v1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    .line 140
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$5;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$5;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 141
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object v0

    const-string v1, "02"

    .line 87
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "00"

    goto :goto_0

    :cond_0
    const-string v1, "01"

    :goto_0
    const/16 v2, 0x57c

    .line 86
    invoke-interface {v0, v2, p1, p2, v1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    .line 87
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$3;

    invoke-direct {v0, p3, p1, p0}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$3;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 88
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-static {p0}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis;->b(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$2;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/purchase/SubscriptionList;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$1;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
