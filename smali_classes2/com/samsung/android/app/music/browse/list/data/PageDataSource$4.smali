.class Lcom/samsung/android/app/music/browse/list/data/PageDataSource$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a(Landroid/content/Context;IZ)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TResponse;",
        "Lio/reactivex/Observable<",
        "Ljava/util/List<",
        "TItem;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$4;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponse;)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "TItem;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$4;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;Lcom/samsung/android/app/music/model/base/ServerResponse;)Lcom/samsung/android/app/music/model/base/ServerResponse;

    if-nez p1, :cond_0

    .line 92
    new-instance p1, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/network/exception/ServerResponseException;-><init>(ILjava/lang/String;)V

    .line 93
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/music/model/base/ServerResponse;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/exception/ServerResponseException;-><init>(Lcom/samsung/android/app/music/model/base/ServerResponse;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$4;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

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

    .line 86
    check-cast p1, Lcom/samsung/android/app/music/model/base/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$4;->a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
