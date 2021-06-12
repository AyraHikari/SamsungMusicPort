.class public Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;
.super Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;-><init>()V

    const/16 v0, 0x32

    .line 40
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->c:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    .line 48
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->c:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;)Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;)Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;)Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;
    .locals 5

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getImages()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getImages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getImages()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getArtists()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;

    .line 191
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;)Lcom/samsung/android/app/music/model/milksearch/SearchArtist;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->setArtistList(Ljava/util/List;)V

    :cond_2
    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;)Lcom/samsung/android/app/music/model/milksearch/SearchArtist;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;)Lcom/samsung/android/app/music/model/milksearch/SearchArtist;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;)Lcom/samsung/android/app/music/model/milksearch/SearchArtist;
    .locals 5

    .line 176
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;->getName()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;->getImages()[Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;->getImages()[Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;->getImages()[Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->setSpotifyUri(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;)Lcom/samsung/android/app/music/model/milksearch/SearchTrack;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;)Lcom/samsung/android/app/music/model/milksearch/SearchTrack;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;)Lcom/samsung/android/app/music/model/milksearch/SearchTrack;
    .locals 8

    .line 159
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getAlbum()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 161
    new-instance v3, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getName()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getImages()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getImages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getImages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;->getUrl()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 166
    :goto_1
    new-instance v0, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_2

    .line 167
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v2

    .line 168
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getArtistList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getArtistList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 169
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getArtistList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-direct {v0, v4, v5, v6, v1}, Lcom/samsung/android/app/music/model/base/TrackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    .line 170
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/model/base/TrackModel;->setAlbumTitle(Ljava/lang/String;)V

    .line 171
    new-instance v1, Lcom/samsung/android/app/music/model/milksearch/SearchTrack;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, v3, p1}, Lcom/samsung/android/app/music/model/milksearch/SearchTrack;-><init>(Lcom/samsung/android/app/music/model/base/TrackModel;Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->d:Ljava/lang/String;

    return-object p0
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 82
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 83
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ","

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;)Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    return-object p0
.end method

.method private b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;->v_()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->d:Ljava/lang/String;

    const-string v1, "q"

    .line 54
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "country"

    .line 55
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "offset"

    .line 57
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    .line 58
    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;->d()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->c:I

    mul-int v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "limit"

    .line 59
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    .line 66
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->ARTIST:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    .line 67
    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->PLAYLIST:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "1"

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "3"

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->ARTIST:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "2"

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v1, "9"

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->PLAYLIST:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;->a(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object v0

    .line 94
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;I)V

    .line 95
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
