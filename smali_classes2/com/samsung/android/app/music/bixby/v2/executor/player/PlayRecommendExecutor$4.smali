.class Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;
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

    .line 177
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V
    .locals 2

    const-string p1, "PlayRecommendExecutor"

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendableChecker - onResult() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->h(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->h(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    const-string p2, "Music_26_3"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Ljava/lang/String;)V

    return-void
.end method
