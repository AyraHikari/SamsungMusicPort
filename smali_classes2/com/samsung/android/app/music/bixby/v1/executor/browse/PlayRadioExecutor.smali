.class public Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

.field private final c:Landroid/content/Context;

.field private final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->a:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->c:Landroid/content/Context;

    .line 51
    iput-boolean p4, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->d:Z

    return-void
.end method


# virtual methods
.method a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Lio/reactivex/Observable;
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->d:Z

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a(Landroid/content/Context;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    .line 87
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->d:Z

    .line 98
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->b(Landroid/content/Context;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$3;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$3;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    .line 99
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 111
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$5;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$4;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    .line 116
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 73
    invoke-static {p2}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {p2}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PLAY_RADIO_ONLINE_PLAYLIST"

    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PlayRadioExecutor"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute. action - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
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

    .line 57
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    .line 60
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
