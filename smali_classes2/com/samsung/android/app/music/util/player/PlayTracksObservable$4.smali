.class final Lcom/samsung/android/app/music/util/player/PlayTracksObservable$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->b(Landroid/content/Context;Ljava/lang/String;Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$4;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->a()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PlayTracksObservable"

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playPlaylistTracks. result code not success. code - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    .line 185
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->a()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/network/exception/ServerResponseException;-><init>(ILjava/lang/String;)V

    .line 184
    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b()[J

    move-result-object v0

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b()[J

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$4;->a:Landroid/content/Context;

    .line 193
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b()[J

    move-result-object v3

    .line 194
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->c()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$4;->b:Z

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;-><init>(Landroid/content/Context;[JLjava/util/List;IZLcom/samsung/android/app/music/util/player/PlayTracksObservable$1;)V

    .line 195
    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v1, 0x4e20

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 196
    invoke-virtual {p1, v1, v2, v3}, Lio/reactivex/Observable;->b(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    .line 198
    invoke-static {v0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->c(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "playPlaylistTracks"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/util/rx/ObservableLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$4$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$4$1;-><init>(Lcom/samsung/android/app/music/util/player/PlayTracksObservable$4;Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)V

    .line 199
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "PlayTracksObservable"

    const-string v0, "playPlaylistTracks. audio ids null or length 0"

    .line 189
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance p1, Lcom/samsung/android/app/music/util/player/NoTracksToPlayException;

    invoke-direct {p1}, Lcom/samsung/android/app/music/util/player/NoTracksToPlayException;-><init>()V

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

    .line 177
    check-cast p1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$4;->a(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
