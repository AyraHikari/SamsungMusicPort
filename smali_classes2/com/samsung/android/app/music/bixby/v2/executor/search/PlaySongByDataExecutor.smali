.class public Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field private b:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;)I
    .locals 4

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    .line 101
    invoke-virtual {p2}, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v0, v1, :cond_3

    .line 108
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;

    .line 109
    invoke-virtual {p2}, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->STATION:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v0, v1, :cond_5

    .line 116
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;

    .line 117
    invoke-virtual {p2}, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return v2
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)V
    .locals 9

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v1, v2, :cond_1

    .line 129
    new-instance v1, Lcom/samsung/android/app/music/model/milksearch/SearchList;

    invoke-direct {v1}, Lcom/samsung/android/app/music/model/milksearch/SearchList;-><init>()V

    .line 131
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v0, v2, :cond_1

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    .line 134
    new-instance v4, Lcom/samsung/android/app/music/model/base/TrackModel;

    iget-object v5, v3, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->d:Ljava/lang/String;

    iget-object v6, v3, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->a:Ljava/lang/String;

    iget-object v7, v3, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    iget-object v8, v3, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/app/music/model/base/TrackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v3, v3, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/music/model/base/TrackModel;->setLargeSizeImageUrl(Ljava/lang/String;)V

    .line 138
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->setTrackList(Ljava/util/List;)V

    .line 141
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->a(Lcom/samsung/android/app/music/model/milksearch/SearchList;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    const-string v0, "selectedData"

    .line 40
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "PlaySongByData"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selected data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "PlaySongByData"

    const-string p2, "execute() - empty parameter."

    .line 44
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;

    move-result-object p2

    .line 48
    invoke-virtual {p2}, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->b()Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string p3, "Music_0_0"

    invoke-direct {p2, v2, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void

    :cond_1
    const-string v3, "All"

    .line 56
    invoke-virtual {p2}, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    const-string p2, "PlaySongByData"

    const-string p3, "play all request comes"

    .line 57
    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne p2, p3, :cond_2

    .line 59
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->a(Z)V

    .line 60
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->a(I)V

    goto :goto_2

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string p3, "Music_23_2"

    invoke-direct {p2, v2, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void

    .line 66
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->PLAYLIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v2, v3, :cond_4

    :try_start_0
    const-string v0, "PlaySongByData"

    const-string v1, "start to play playlist"

    .line 68
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor;->a(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "PlaySongByData"

    .line 71
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "skip to play playlist. wrong type of playlist id : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p2}, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 78
    :cond_4
    :try_start_1
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 80
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    .line 82
    :goto_1
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->a(I)V

    .line 84
    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)V

    .line 87
    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-eq p2, p3, :cond_6

    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez p2, :cond_5

    goto :goto_3

    .line 91
    :cond_5
    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;

    iget-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-direct {p2, p1, v0, v5, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;ZLcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    goto :goto_4

    .line 89
    :cond_6
    :goto_3
    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;

    invoke-direct {p2, p1, v0, v5}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;Z)V

    .line 93
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;)V

    .line 94
    invoke-interface {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;->a()V

    return-void
.end method
