.class final Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$2;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/purchase/SubscriptionList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/purchase/SubscriptionList;)V
    .locals 3

    const-string v0, "SubscriptionApis"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubscriptionList - count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$2;->a:Landroid/content/Context;

    .line 73
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Subscriptions;->a()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$2;->a:Landroid/content/Context;

    .line 77
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Subscriptions;->a()Landroid/net/Uri;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionList;->toContentValuesArray()[Landroid/content/ContentValues;

    move-result-object p1

    .line 77
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "SubscriptionApis"

    const-string v1, "getSubscriptionList - onComplete"

    .line 53
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "SubscriptionApis"

    const-string v1, "getSubscriptionList - onError"

    .line 58
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    instance-of v0, p1, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$AccountSigninException;

    if-eqz v0, :cond_0

    const-string v0, "SubscriptionApis"

    .line 61
    check-cast p1, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$AccountSigninException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$AccountSigninException;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$2;->a(Lcom/samsung/android/app/music/model/purchase/SubscriptionList;)V

    return-void
.end method
