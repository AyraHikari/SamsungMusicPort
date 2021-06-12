.class final Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Ljava/lang/String;)Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_4

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->getCards()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->getCards()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->getCards()Ljava/util/List;

    move-result-object p1

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/browse/main/CardModel;

    .line 88
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/browse/main/CardModel;->getCardType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 89
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/browse/main/CardModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getRecommendType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OnlinePlayRxFunctions"

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cardType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", recommendType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 94
    iget-object v3, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$3;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 100
    new-instance p1, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    const-string v0, "Unknown playlist id."

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/app/music/network/exception/ServerResponseException;-><init>(ILjava/lang/String;)V

    .line 101
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 103
    :cond_3
    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 83
    :cond_4
    :goto_1
    new-instance p1, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/app/music/network/exception/ServerResponseException;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

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

    .line 78
    check-cast p1, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$3;->a(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
