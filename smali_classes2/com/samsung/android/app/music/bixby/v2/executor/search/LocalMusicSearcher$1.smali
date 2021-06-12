.class Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V
    .locals 7

    const-string v0, "MusicSearch"

    const-string v1, "server artist names received"

    .line 105
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getArtistList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 110
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 112
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->getArtistName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MusicSearch"

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server artist name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "("

    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, ")"

    .line 119
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v3, :cond_0

    if-ltz v4, :cond_0

    add-int/lit8 v6, v3, 0x1

    if-ge v6, v4, :cond_0

    .line 124
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 128
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;

    invoke-static {v3, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;

    .line 130
    invoke-static {v4, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v4

    .line 129
    invoke-static {v3, v2, v4}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;

    invoke-static {v2, v5}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;

    invoke-static {v3, v5}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher$1;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V

    return-void
.end method
