.class Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;->a(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;)V
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
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;->c:Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;->a:Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V
    .locals 8

    const-string v0, "MusicSearch"

    const-string v1, "server artist names received"

    .line 57
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 60
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getArtistList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    .line 62
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 65
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->getArtistName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MusicSearch"

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server artist name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "("

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, ")"

    .line 72
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    add-int/lit8 v7, v4, 0x1

    if-ge v7, v5, :cond_0

    .line 77
    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 81
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;->c:Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;

    invoke-static {v4, v3}, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;->a(Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;->a:Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;

    invoke-interface {p1, v3}, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;->c:Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;

    invoke-static {v3, v6}, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;->a(Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;->a:Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;

    invoke-interface {p1, v6}, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;->a:Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;->a:Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;->a(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V

    return-void
.end method
