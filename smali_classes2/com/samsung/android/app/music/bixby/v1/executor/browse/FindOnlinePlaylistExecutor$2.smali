.class final Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;->b()Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 103
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 110
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 115
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/bixby/RulePlaylist;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/bixby/RulePlaylist;

    .line 119
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/bixby/RulePlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 105
    :cond_3
    :goto_1
    new-instance p1, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$PlaylistNotFoundException;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$PlaylistNotFoundException;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$1;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    check-cast p1, Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$2;->a(Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
