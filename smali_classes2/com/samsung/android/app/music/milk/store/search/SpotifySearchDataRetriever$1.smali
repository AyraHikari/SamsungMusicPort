.class Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;I)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;->b:Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;->a:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;)V
    .locals 8

    .line 107
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;-><init>()V

    .line 108
    new-instance v1, Lcom/samsung/android/app/music/model/milksearch/SearchList;

    invoke-direct {v1}, Lcom/samsung/android/app/music/model/milksearch/SearchList;-><init>()V

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getTracks()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getTracks()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;->getTotal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->setTrackTotalCount(I)V

    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getTracks()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getTracks()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;->getItems()Ljava/util/List;

    move-result-object v3

    .line 113
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;

    .line 115
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;->b:Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;

    invoke-static {v5, v4}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;)Lcom/samsung/android/app/music/model/milksearch/SearchTrack;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getArtists()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getArtists()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;->getTotal()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->setArtistTotalCount(I)V

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getArtists()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getArtists()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v4

    .line 124
    invoke-virtual {v4}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;->getItems()Ljava/util/List;

    move-result-object v4

    .line 123
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;

    .line 125
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;->b:Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;

    invoke-static {v6, v5}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;)Lcom/samsung/android/app/music/model/milksearch/SearchArtist;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getAlbums()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 131
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getAlbums()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;->getTotal()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->setAlbumTotalCount(I)V

    .line 132
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getAlbums()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;->getItems()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 133
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getAlbums()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;

    .line 134
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;->b:Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;

    invoke-static {v7, v6}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;)Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 138
    :cond_2
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->setSearchTracks(Ljava/util/List;)V

    .line 139
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->setArtistList(Ljava/util/List;)V

    .line 140
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->setAlbumList(Ljava/util/List;)V

    .line 141
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getPlaylists()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getPlaylists()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;->getTotal()I

    move-result v2

    .line 142
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->setSpotifyPlaylistCount(I)V

    .line 144
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getPlaylists()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 145
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->getPlaylists()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->setPlaylists(Ljava/util/List;)V

    .line 148
    :cond_3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->setSearchList(Lcom/samsung/android/app/music/model/milksearch/SearchList;)V

    .line 149
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;->b:Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;->b:Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;

    .line 150
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;->b:Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->b(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;)Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;->v_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 151
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;->b:Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;->a:I

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;->b:Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;)V

    return-void
.end method
