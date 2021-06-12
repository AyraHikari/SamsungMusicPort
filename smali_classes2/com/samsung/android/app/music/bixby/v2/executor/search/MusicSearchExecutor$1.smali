.class Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v0, v1, :cond_2

    .line 103
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->f()I

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    .line 104
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->h(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 108
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string v0, "mobile_data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v1, -0x1

    const-string v2, "Music_0_9"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    .line 111
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void

    :cond_0
    const-string p1, "MusicSearch"

    const-string v0, "start to search again in store as this keyword was not found in local."

    .line 114
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;)V

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearcherFactory;->a(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;)V

    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;)V

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method
