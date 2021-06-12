.class public final Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

.field private c:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

.field private d:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->e:Ljava/lang/Boolean;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    .line 61
    new-instance p1, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->d:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->d()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    move-result-object v0

    .line 196
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    .line 197
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 198
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/BixbyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/BixbyTransport;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/network/transport/BixbyTransport;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$5;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)V

    .line 203
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 200
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->d:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    .line 280
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->d:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;->a(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;Ljava/util/List;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$4;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;)V"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 114
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 115
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/base/TrackModel;

    .line 116
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackModel;->getExplicit()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Z)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 119
    :cond_1
    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Lcom/samsung/android/app/music/model/base/TrackModel;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    move-result-object v4

    .line 120
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->d:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    invoke-virtual {v5, v4}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a(Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    .line 121
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "MusicSearch"

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add searched track : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-static {v4, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/model/milksearch/SearchList;

    invoke-direct {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchList;-><init>()V

    .line 127
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->setTrackList(Ljava/util/List;)V

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->d:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a(Lcom/samsung/android/app/music/model/milksearch/SearchList;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    .line 129
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    .line 130
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)[J

    return-void
.end method

.method private a(Z)Z
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->e:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 270
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v2, "explicit_option"

    .line 271
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 270
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->e:Ljava/lang/Boolean;

    const-string v0, "MusicSearch"

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "explicit setting on : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->e:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->c(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/SearchTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/SearchTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    .line 190
    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->toDisplayType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant;->a:[Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant$SearchSortItem;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant$SearchSortItem;->b:Ljava/lang/String;

    const-string v3, "1"

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/music/network/transport/SearchTransport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a:Landroid/content/Context;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/SearchTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/SearchTransport;

    move-result-object v0

    const-string v1, "3"

    sget-object v2, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant;->a:[Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant$SearchSortItem;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant$SearchSortItem;->b:Ljava/lang/String;

    const-string v3, "1"

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/music/network/transport/SearchTransport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$6;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)V

    .line 222
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->d:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;)V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicSearch"

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start search music in store : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object p1

    .line 71
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$3;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$3;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)V

    .line 81
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
