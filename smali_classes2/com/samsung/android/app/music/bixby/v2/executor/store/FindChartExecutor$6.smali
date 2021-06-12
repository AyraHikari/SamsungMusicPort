.class Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;->a(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;)Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/util/List<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

.field final synthetic d:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$6;->d:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$6;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$6;->c:Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 165
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$6;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const-string v1, "actionType"

    const-string v2, "Find"

    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "resultCount"

    .line 170
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "searchType"

    const-string v2, "Music"

    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "inputData"

    .line 172
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$6;->c:Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/TrackModel;

    .line 175
    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Lcom/samsung/android/app/music/model/base/TrackModel;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "trackData"

    .line 177
    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-object v0

    .line 166
    :cond_2
    :goto_1
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$6;->a:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$6;->a(Ljava/util/List;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p1

    return-object p1
.end method
