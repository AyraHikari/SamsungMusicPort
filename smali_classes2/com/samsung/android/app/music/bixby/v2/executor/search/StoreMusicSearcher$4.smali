.class Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Ljava/lang/String;)V
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
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 148
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->d(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a(Lcom/samsung/android/app/music/model/milksearch/SearchList;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getTrackList()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;Ljava/util/List;)V

    goto/16 :goto_2

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 157
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getAlbumList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 161
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    if-ge v3, v2, :cond_3

    .line 162
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;)Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;

    move-result-object v0

    const-string v1, "Store"

    .line 163
    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->f:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->d(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a(Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    const-string v0, "MusicSearch"

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add searched album : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->STATION:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v0, v1, :cond_3

    .line 170
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getPlaylistList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 174
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    if-ge v3, v2, :cond_3

    .line 176
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;)Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->d(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a(Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    const-string v0, "MusicSearch"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add searched station : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;

    iget-object v4, v4, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 183
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)V

    return-void

    .line 149
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 134
    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V

    return-void
.end method
