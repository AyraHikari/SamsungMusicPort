.class final Lcom/samsung/android/app/music/regional/spotify/network/SpotifyIdSearcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyIdSearcher;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;",
        "Lio/reactivex/ObservableSource<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyIdSearcher$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyIdSearcher$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyIdSearcher$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getTracks()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 100
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;

    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "SpotifyIdSearcher"

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "search. not found. track list empty. query - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyIdSearcher$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyIdSearcher$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", country - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyIdSearcher$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

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

    .line 95
    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyIdSearcher$1;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
