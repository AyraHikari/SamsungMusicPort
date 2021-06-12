.class public final Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;,
        Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AllSearchLocalResultExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;
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

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/search/ISearchPageSwitcher;Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;Lcom/samsung/android/app/music/network/NetworkManager;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/search/ISearchPageSwitcher;
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

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 59
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    .line 60
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;

    .line 61
    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 62
    iput-object p5, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->f:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 63
    iput-object p6, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->h:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;Ljava/lang/String;)I
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SearchSongsViewAll"

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x110001

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SearchAlbumsViewAll"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const v1, 0x10002

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/music/search/ISearchPageSwitcher;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const v0, 0x10002

    if-eq p1, v0, :cond_1

    const v0, 0x110001

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "SearchSongsTab"

    return-object p1

    :cond_1
    const-string p1, "SearchAlbumsTab"

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return-void
.end method

.method private a(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 3
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 96
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommandCompleted() - existSearchResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->isLastState()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 100
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p2, "artistName/songName"

    const-string v1, "Match"

    const-string v2, "yes"

    .line 101
    invoke-virtual {p1, p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 108
    :cond_1
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p1

    if-nez p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->g:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->b_(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    .line 117
    new-instance p1, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;Landroid/os/Looper;)V

    const-wide/16 v1, 0x5dc

    .line 123
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 125
    :cond_2
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a:Ljava/lang/String;

    const-string v1, "onCommandCompleted() - Stop this all search rule here due to enabled my music mode."

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->g:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->b_(Ljava/lang/String;)V

    .line 130
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p2, "artistName/songName"

    const-string v1, "Match"

    const-string v2, "no"

    .line 131
    invoke-virtual {p1, p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/music/network/NetworkManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->f:Lcom/samsung/android/app/music/network/NetworkManager;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->h:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 5
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STORE_SEARCH_RESULT"

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 70
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute() - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->g:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$1;)V

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;->a(ILcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;)V

    return v2

    :cond_0
    const-string p1, "MOVE_SEARCH_RESULT_DETAIL"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
