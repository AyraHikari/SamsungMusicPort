.class final Lcom/samsung/android/app/music/util/player/PlayRadioObservable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;Landroid/util/Pair;Ljava/lang/String;Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$2;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;)Lio/reactivex/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->e()I

    move-result v0

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->a()Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->b()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->d()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    iget-object v7, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$2;->b:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->f()Z

    move-result v8

    iget-boolean v9, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$2;->c:Z

    .line 191
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->g()Lcom/samsung/android/app/music/model/AdInfo;

    move-result-object v10

    .line 186
    invoke-static/range {v1 .. v10}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/lang/String;ZZLcom/samsung/android/app/music/model/AdInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "PlayRadioObservable"

    const-string v0, "playRadio. no playable tracks."

    .line 182
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance p1, Lcom/samsung/android/app/music/util/player/NoTracksToPlayException;

    invoke-direct {p1}, Lcom/samsung/android/app/music/util/player/NoTracksToPlayException;-><init>()V

    throw p1

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playRadio. result code not success. code - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayRadioObservable"

    .line 175
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->e()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/network/exception/ServerResponseException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    check-cast p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$2;->a(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
