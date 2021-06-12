.class Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$OnRecommendationLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/PlayListModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 115
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->d(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    const-string v0, "Music_26_3"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->g(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;)V

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    .line 137
    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->e(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object v1

    const-string v2, "Music_0_5"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    .line 130
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void

    .line 116
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    const-string v0, "Music_26_3"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Ljava/lang/String;)V

    return-void
.end method
