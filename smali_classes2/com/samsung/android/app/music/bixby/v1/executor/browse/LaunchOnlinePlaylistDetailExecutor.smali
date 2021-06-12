.class public Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

.field private final b:Landroid/app/Activity;


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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->b:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 83
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v1, "CategoryDetails"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v1, "Valid"

    const-string v2, "no"

    .line 84
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 90
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    .line 91
    div-long/2addr v0, v2

    mul-long v0, v0, v2

    .line 93
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 9
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LAUNCH_ONLINE_PLAYLIST_DETAILS"

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v0, "LaunchOnlinePlaylistDetailExecutor"

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute. command - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RealtimeChart"

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x5a

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 39
    invoke-static {v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object p1

    .line 40
    invoke-static {}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/app/Activity;)V

    .line 41
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "year"

    .line 43
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "genreName"

    .line 45
    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getRuleId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LaunchOnlinePlaylistDetailExecutor"

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "execute. genreId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", yearId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", rule - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Music_1360"

    .line 51
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string p1, "GenreName"

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->a(Ljava/lang/String;)V

    return v3

    :cond_1
    const-string v6, "Music_1361"

    .line 54
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p1, "Year"

    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->a(Ljava/lang/String;)V

    return v3

    .line 58
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    .line 60
    invoke-static {v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object p1

    .line 61
    invoke-static {v4}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 62
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 63
    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string p1, "Year"

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->a(Ljava/lang/String;)V

    return v3

    .line 68
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    invoke-interface {v4, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    const/16 p1, 0x32

    .line 69
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->b:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/app/Activity;)V

    .line 70
    invoke-static {v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object p1

    .line 71
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/app/Activity;)V

    :goto_0
    return v3

    .line 73
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v3

    :cond_6
    return v1
.end method
