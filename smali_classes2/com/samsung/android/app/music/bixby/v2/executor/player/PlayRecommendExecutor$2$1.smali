.class Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->d(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Music_26_5"

    goto :goto_0

    :cond_0
    const-string v0, "Music_26_4"

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-static {v1, v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    check-cast p1, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2$1;->a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)V

    return-void
.end method
