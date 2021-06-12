.class Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->b()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    .line 207
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->e(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private c(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)V
    .locals 5

    .line 216
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    const-string v1, "resultCount"

    .line 217
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 218
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 223
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v0

    .line 224
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    .line 229
    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {v4}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->d(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object v4

    invoke-direct {v1, v3, p1, v2, v4}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;ZLcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    .line 228
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;

    goto :goto_1

    .line 226
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p1, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;Z)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;

    .line 231
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->g(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->f(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;)V

    .line 232
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->g(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;->a()V

    return-void

    :cond_3
    :goto_2
    const-string v0, "PlayThisArtist"

    const-string v1, "no results found so skip to do follow up behavior."

    .line 219
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->d(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v1

    .line 180
    sget-object v2, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v1, v2, :cond_1

    .line 181
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->b(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->a(Ljava/util/List;)V

    .line 183
    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v1, v2, :cond_3

    .line 184
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->f()I

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_3

    .line 185
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v1

    if-nez v1, :cond_3

    .line 187
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->h(Landroid/content/Context;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 188
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string v1, "mobile_data"

    const/4 v2, 0x0

    .line 189
    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->d(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v1, -0x1

    const-string v2, "Music_0_9"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void

    :cond_2
    const-string p1, "PlayThisArtist"

    const-string v1, "start to search again in store as this keyword was not found in local."

    .line 193
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;)V

    .line 196
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearcherFactory;->a(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;)V

    return-void

    .line 199
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;->c(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)V

    return-void
.end method
