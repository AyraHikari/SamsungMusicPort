.class final Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/ResponseModel;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$5;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$5;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/ResponseModel;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "reserved"

    const-string v1, "0"

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orderId = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$5;->b:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Subscriptions;->a()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$SubscriptionException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

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

    .line 141
    check-cast p1, Lcom/samsung/android/app/music/model/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis$5;->a(Lcom/samsung/android/app/music/model/ResponseModel;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
