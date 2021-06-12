.class Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


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

    .line 167
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    const-string p2, "PlayRecommendExecutor"

    const-string v0, "onServiceMetaReceived()"

    .line 170
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 172
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->i(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->h(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method
