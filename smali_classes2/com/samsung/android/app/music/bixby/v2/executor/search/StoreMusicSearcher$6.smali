.class Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->c(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$6;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
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

    .line 226
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->c(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 228
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->getArtistId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 230
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

    .line 222
    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$6;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
