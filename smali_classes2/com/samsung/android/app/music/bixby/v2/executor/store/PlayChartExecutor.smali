.class public Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
    .locals 0

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;->b(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/OnlineTrack;

    .line 171
    instance-of v3, v2, Lcom/samsung/android/app/music/model/base/TrackModel;

    if-eqz v3, :cond_0

    .line 172
    check-cast v2, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 180
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-direct {p2, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    move-object p1, p2

    goto :goto_1

    .line 182
    :cond_2
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-direct {p1, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    :goto_1
    const-string p2, "actionType"

    const-string v1, "Play"

    .line 184
    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "trialPlay"

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "resultCount"

    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/base/TrackModel;

    .line 189
    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Lcom/samsung/android/app/music/model/base/TrackModel;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v0, "trackData"

    .line 191
    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->b()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/music/bixby/v2/util/StoreExecutorUtils;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;Z)V

    const-string p0, "disablePlayControl"

    .line 193
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 195
    :cond_4
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-direct {p1, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const-string p0, "actionType"

    const-string p2, "Play"

    .line 196
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "resultCount"

    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    const-string p0, "searchType"

    const-string p2, "Music"

    .line 199
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "inputData"

    .line 200
    invoke-virtual {p3}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$1;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    .line 142
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->b(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Music_0_5"

    .line 147
    invoke-static {p3, p2}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 0

    .line 151
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 161
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->b(Landroid/content/Context;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "PlayChartExecutor"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 60
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
