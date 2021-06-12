.class public final Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;,
        Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LocalSearchResultExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lcom/samsung/android/app/music/network/NetworkManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;Lcom/samsung/android/app/music/network/NetworkManager;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/app/music/network/NetworkManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 49
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->c:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;

    .line 51
    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 52
    iput-object p5, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->f:Lcom/samsung/android/app/music/network/NetworkManager;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;Ljava/lang/String;)I
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SearchLocalSongs"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x110001

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SearchLocalAlbums"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const v1, 0x10002

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;)Lcom/samsung/android/app/music/network/NetworkManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->f:Lcom/samsung/android/app/music/network/NetworkManager;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->a(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return-void
.end method

.method private a(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 3
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommandCompleted() - existSearchResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->isLastState()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 85
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "artistName/songName"

    const-string v1, "Match"

    const-string v2, "yes"

    .line 86
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->g:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->b_(Ljava/lang/String;)V

    .line 96
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p2, "artistName/songName"

    const-string v0, "Match"

    const-string v1, "no"

    .line 97
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;)Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 4
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LOCAL_SEARCH_RESULT"

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->g:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->a(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$1;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;->a(ILcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
