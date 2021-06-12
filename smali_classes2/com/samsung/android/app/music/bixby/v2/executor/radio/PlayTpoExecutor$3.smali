.class Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;->a()Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object p1

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 93
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 98
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/bixby/RulePlaylist;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/bixby/RulePlaylist;

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/bixby/RulePlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 88
    :cond_3
    :goto_1
    new-instance p1, Lcom/samsung/android/app/music/util/player/PlaylistNotFoundException;

    invoke-direct {p1}, Lcom/samsung/android/app/music/util/player/PlaylistNotFoundException;-><init>()V

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

    .line 82
    check-cast p1, Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$3;->a(Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
