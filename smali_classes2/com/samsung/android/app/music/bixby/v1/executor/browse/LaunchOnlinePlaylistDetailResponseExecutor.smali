.class public Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback<",
        "Lcom/samsung/android/app/music/model/base/ServerResponse;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;"
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

.field private final b:Landroid/app/Activity;

.field private c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

.field private d:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->b:Landroid/app/Activity;

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getRuleId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Music_1360"

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v1, "CategoryDetails"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v1, "GenreName"

    const-string v2, "Valid"

    const-string v3, "no"

    .line 77
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "Music_1361"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v1, "CategoryDetails"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v1, "Year"

    const-string v2, "Valid"

    const-string v3, "no"

    .line 80
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 83
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object v0
.end method

.method private a()V
    .locals 4

    const-string v0, "LaunchOnlinePlaylistDetailResponseExecutor"

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResponseIfDataExist. loader - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->d:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", command - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->d:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    if-eqz v0, :cond_4

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->d:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->f()Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 53
    invoke-interface {v0}, Lcom/samsung/android/app/music/model/base/ServerResponse;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->b(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 66
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_2

    .line 54
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    move-result-object v0

    const-string v1, "LaunchOnlinePlaylistDetailResponseExecutor"

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResponseIfDataExist. failNlg - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private b(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Ljava/lang/String;
    .locals 2

    const-string v0, "Music_1363"

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getRuleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "RealTime"

    return-object p1

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Lcom/samsung/android/app/music/model/base/ServerResponse;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->d:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->a()V

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/samsung/android/app/music/model/base/ServerResponse;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Lcom/samsung/android/app/music/model/base/ServerResponse;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Ljava/lang/Throwable;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->d:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->a()V

    return-void
.end method

.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LAUNCH_ONLINE_PLAYLIST_DETAILS"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MOVE_SEARCH_RESULT_DETAIL"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const-string v0, "LaunchOnlinePlaylistDetailResponseExecutor"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute. action - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;->a()V

    const/4 p1, 0x1

    return p1
.end method
