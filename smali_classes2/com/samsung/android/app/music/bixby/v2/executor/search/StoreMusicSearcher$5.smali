.class Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/bixby/CheckArtistResponse;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$5;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/bixby/CheckArtistResponse;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/bixby/CheckArtistResponse;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/bixby/CheckArtistResponse;->getCheckArtistInfoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 211
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/bixby/CheckArtist;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/bixby/CheckArtist;->isArtist()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 214
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

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

    .line 203
    check-cast p1, Lcom/samsung/android/app/music/model/bixby/CheckArtistResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$5;->a(Lcom/samsung/android/app/music/model/bixby/CheckArtistResponse;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
