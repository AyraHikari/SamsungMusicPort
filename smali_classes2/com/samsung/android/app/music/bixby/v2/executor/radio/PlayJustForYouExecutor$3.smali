.class Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;->a(Ljava/lang/String;)Lio/reactivex/functions/Function;
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
        "Lio/reactivex/Observable<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$3;->b:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)Lio/reactivex/Observable;
    .locals 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->getCards()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->getCards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->getCards()Ljava/util/List;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/browse/main/CardModel;

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/browse/main/CardModel;->getCardType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 106
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/browse/main/CardModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getRecommendType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlayJustForYouExecutor"

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cardType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", recommendType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 112
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$3;->a:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x6c34a97

    if-eq v5, v6, :cond_3

    const v6, 0x3e3a69ef

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "DailyForYou"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_3
    const-string v3, "WeeklyForYou"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "DFY"

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$3;->b:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;Lcom/samsung/android/app/music/model/base/PlayListModel;)Lcom/samsung/android/app/music/model/base/PlayListModel;

    goto :goto_0

    :pswitch_1
    const-string v1, "WFY"

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$3;->b:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;Lcom/samsung/android/app/music/model/base/PlayListModel;)Lcom/samsung/android/app/music/model/base/PlayListModel;

    goto/16 :goto_0

    .line 127
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$3;->b:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;)Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 101
    :cond_6
    :goto_3
    new-instance p1, Lcom/samsung/android/app/music/util/player/PlaylistNotFoundException;

    invoke-direct {p1}, Lcom/samsung/android/app/music/util/player/PlaylistNotFoundException;-><init>()V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    check-cast p1, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$3;->a(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
