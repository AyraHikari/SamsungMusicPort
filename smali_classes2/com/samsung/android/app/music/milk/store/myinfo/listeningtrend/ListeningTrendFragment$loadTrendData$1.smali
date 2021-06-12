.class final Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/samsung/android/app/music/model/playhistory/MyChartResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/model/playhistory/MyChartResponse;)V
    .locals 11

    const-string v0, "Ui"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListeningTrend_ListeningTrendFragment | onNext() - 1411 api get ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "myChartResponse"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/MyChartResponse;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/MyChartResponse;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/MyChartResponse;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/model/playhistory/MyChartList;

    .line 109
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "chartList"

    .line 110
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/playhistory/MyChartList;->getList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/model/playhistory/MyChart;

    .line 111
    new-instance v8, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;

    const-string v9, "chart"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/app/music/model/playhistory/MyChart;->getRanking()I

    move-result v9

    invoke-virtual {v7}, Lcom/samsung/android/app/music/model/playhistory/MyChart;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/samsung/android/app/music/model/playhistory/MyChart;->getRate()I

    move-result v7

    invoke-direct {v8, v9, v10, v7}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/playhistory/MyChartList;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xa2f

    if-eq v6, v7, :cond_7

    const/16 v7, 0xa35

    if-eq v6, v7, :cond_6

    const/16 v7, 0xa6d

    if-eq v6, v7, :cond_5

    const/16 v7, 0xa73

    if-eq v6, v7, :cond_4

    goto :goto_0

    :cond_4
    const-string v6, "TG"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    const-string v6, "TA"

    .line 113
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_6
    const-string v6, "RG"

    .line 113
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_7
    const-string v6, "RA"

    .line 113
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 123
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;

    .line 124
    new-instance v4, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 123
    invoke-static {p1, v4}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->a(Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/samsung/android/app/music/model/playhistory/MyChartResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$1;->a(Lcom/samsung/android/app/music/model/playhistory/MyChartResponse;)V

    return-void
.end method
