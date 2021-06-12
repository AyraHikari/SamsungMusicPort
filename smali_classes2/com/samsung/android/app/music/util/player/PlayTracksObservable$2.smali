.class final Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IZ)Lio/reactivex/Observable;
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
        "Lio/reactivex/ObservableSource<",
        "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;->a:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;->b:I

    iput-boolean p3, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;)Lio/reactivex/ObservableSource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b()[J

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b()[J

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;->a:Landroid/content/Context;

    .line 152
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b()[J

    move-result-object v3

    .line 153
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->c()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;->b:I

    iget-boolean v6, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;->c:Z

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;-><init>(Landroid/content/Context;[JLjava/util/List;IZLcom/samsung/android/app/music/util/player/PlayTracksObservable$1;)V

    .line 154
    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v1, 0x4e20

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 155
    invoke-virtual {p1, v1, v2, v3}, Lio/reactivex/Observable;->b(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    .line 157
    invoke-static {v0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->c(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "playTracks"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/util/rx/ObservableLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2$1;-><init>(Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)V

    .line 158
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "PlayTracksObservable"

    const-string v0, "playTracks. audio ids null or length 0"

    .line 147
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
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

    .line 140
    check-cast p1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;->a(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
