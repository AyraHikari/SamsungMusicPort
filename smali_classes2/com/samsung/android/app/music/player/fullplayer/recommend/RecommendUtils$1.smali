.class final Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$OnRecommendationLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/recommend/PlayerModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$OnRecommendationLoadListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$OnRecommendationLoadListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$OnRecommendationLoadListener;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/recommend/PlayerModel;)V
    .locals 3

    const-string v0, "SMUSIC-RecommendUtils"

    const-string v1, "loadPlayerRecommend() - onNext"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "RecommendUtils"

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPlayerRecommend() - getPreferenceModel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/recommend/PlayerModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$OnRecommendationLoadListener;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/recommend/PlayerModel;->getPlaylists()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$OnRecommendationLoadListener;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "SMUSIC-RecommendUtils"

    const-string v1, "loadPlayerRecommend() - onComplete"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "SMUSIC-RecommendUtils"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPlayerRecommend() - onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/samsung/android/app/music/model/recommend/PlayerModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$1;->a(Lcom/samsung/android/app/music/model/recommend/PlayerModel;)V

    return-void
.end method
