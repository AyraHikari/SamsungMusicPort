.class Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$2;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)V
    .locals 4

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->e()Ljava/util/List;

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

    .line 145
    instance-of v3, v2, Lcom/samsung/android/app/music/model/base/TrackModel;

    if-eqz v3, :cond_0

    .line 146
    check-cast v2, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Lcom/samsung/android/app/music/model/base/TrackModel;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->b()Z

    move-result p1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    invoke-static {v1, p1, v2, v3, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;ZZLcom/samsung/android/app/music/bixby/v2/result/PlayResult;Ljava/util/List;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p1, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$2;->a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)V

    return-void
.end method
