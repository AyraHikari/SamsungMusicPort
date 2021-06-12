.class Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)V
    .locals 5

    const-string v0, "resultCount"

    .line 171
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 172
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v0

    .line 178
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    .line 183
    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {v4}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object v4

    invoke-direct {v1, v3, p1, v2, v4}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;ZLcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    .line 182
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;

    goto :goto_1

    .line 180
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p1, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;Z)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;

    .line 185
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->e(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->d(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->e(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;->a()V

    return-void

    :cond_3
    :goto_2
    const-string v0, "MusicPlay"

    const-string v1, "no results found so skip to do follow up behavior."

    .line 173
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

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

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v0, v1, :cond_1

    .line 152
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->f()I

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->h(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 156
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string v0, "mobile_data"

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v1, -0x1

    const-string v2, "Music_0_9"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void

    :cond_0
    const-string p1, "MusicPlay"

    const-string v0, "start to search again in store as this keyword was not found in local."

    .line 161
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;)V

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearcherFactory;->a(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;)V

    return-void

    .line 167
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;->b(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)V

    return-void
.end method
