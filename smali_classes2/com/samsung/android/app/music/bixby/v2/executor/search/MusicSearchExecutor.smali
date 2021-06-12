.class public final Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

.field private c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field private d:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 56
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;-><init>()V

    const-string v1, "searchWhere"

    .line 57
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    const-string v1, "searchType"

    .line 58
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    const-string v1, "artistName"

    .line 59
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    const-string v1, "songTitle"

    .line 60
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    const-string v1, "searchKeyword"

    .line 61
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    .line 62
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->STATION:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;)V

    goto :goto_0

    .line 70
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->a:Landroid/content/Context;

    return-object p0
.end method

.method private b()Z
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 79
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v4, "Music_0_8"

    invoke-direct {v2, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return v3

    .line 82
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v4, "Music_8_6"

    invoke-direct {v2, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return v3

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v4, "Music_0_5"

    invoke-direct {v2, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return v3

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->h(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 89
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v4, "mobile_data"

    .line 90
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v4, "Music_0_9"

    invoke-direct {v2, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return v3

    :cond_3
    return v2
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    return-object p0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 3
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

    const-string v0, "MusicSearch"

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "given command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->a:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    .line 38
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->a()V

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearcherFactory;->a(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

    .line 42
    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;)V

    :cond_0
    return-void
.end method
