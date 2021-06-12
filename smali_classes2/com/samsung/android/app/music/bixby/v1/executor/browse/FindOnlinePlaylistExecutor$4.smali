.class Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;->a()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 192
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->getCards()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->getCards()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->getCards()Ljava/util/List;

    move-result-object p1

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/browse/main/CardModel;

    .line 199
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/browse/main/CardModel;->getCardType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 200
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/browse/main/CardModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getRecommendType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FindOnlinePlaylistExecutor"

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cardType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", recommendType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const-string v2, "DFY"

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    check-cast p1, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$4;->a(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
