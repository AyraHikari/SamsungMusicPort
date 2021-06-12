.class public Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever$SpotifySearchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpotifySearchListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever$SpotifySearchListener;->a:Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;

    return-void
.end method


# virtual methods
.method public a(ILcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V
    .locals 5

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_5

    .line 64
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 65
    invoke-static {p2}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 68
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/milksearch/SearchTrack;

    .line 69
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/milksearch/SearchTrack;->getSimpleTrack()Lcom/samsung/android/app/music/model/base/TrackModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/app/music/search/SearchUtils;->c(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 79
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;

    .line 80
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 82
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 83
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    :cond_3
    invoke-static {p2}, Lcom/samsung/android/app/music/search/SearchUtils;->h(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 91
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    .line 92
    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getName()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 95
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    :cond_5
    new-instance p2, Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;

    invoke-direct {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;-><init>()V

    .line 101
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;->setAutoCompleteList(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever$SpotifySearchListener;->a:Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p2, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever$SpotifySearchListener;->a(ILcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V

    return-void
.end method
