.class public Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

.field private c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

.field private d:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

.field private e:Z

.field private f:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;ZLcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    .line 51
    iput-boolean p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->e:Z

    .line 52
    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->f:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;)Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    return-object p0
.end method

.method private a(ZZ)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lio/reactivex/functions/Consumer<",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;ZZ)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->a(Z)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;)V
    .locals 3

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->e()V

    .line 117
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->e:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->b(Ljava/util/List;)V

    :cond_0
    const-string v0, "MusicPlay"

    const-string v1, "request play album mod"

    .line 122
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->a(Landroid/content/Context;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->a(ZZ)Lio/reactivex/functions/Consumer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->f:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    const-string v2, "Music_0_5"

    .line 125
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    .line 124
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    const-string v1, "disablePlayControl"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    const-string v1, "trialPlay"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    const-string v1, "transientTime"

    if-eqz p1, :cond_0

    const/16 p1, 0x32

    goto :goto_0

    :cond_0
    const/16 p1, 0x96

    .line 150
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 149
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    if-eqz p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;->a(Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->a:Landroid/content/Context;

    return-object p0
.end method

.method private b()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v0, v1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->c()V

    goto/16 :goto_0

    .line 83
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v0, v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->h()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;

    const-string v1, "MusicPlay"

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request to play album : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->a(Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;)V

    goto :goto_0

    .line 87
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->STATION:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v0, v1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    .line 89
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->h()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;

    const-string v1, "MusicPlay"

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request to play playlist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->e()V

    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x1

    .line 94
    invoke-direct {p0, v2, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->a(ZZ)Lio/reactivex/functions/Consumer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->f:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    const-string v4, "Music_0_5"

    .line 95
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 94
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 97
    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->e:Z

    if-eqz v1, :cond_2

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->c(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c()V
    .locals 5

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->e()V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->a()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getTrackList()Ljava/util/List;

    move-result-object v0

    const-string v1, "MusicPlay"

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request to play searched track : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->a:Landroid/content/Context;

    const-string v2, "SEARCH"

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    .line 110
    invoke-virtual {v3}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->h()I

    move-result v3

    const/4 v4, 0x1

    .line 109
    invoke-static {v1, v2, v0, v3, v4}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IZ)Lio/reactivex/Observable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->e:Z

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->a(ZZ)Lio/reactivex/functions/Consumer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->f:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    const-string v3, "Music_0_5"

    .line 112
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private d()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->f:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v2, "Music_0_5"

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "MusicPlay"

    const-string v1, "start to play."

    .line 61
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->d()V

    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    return-void
.end method
