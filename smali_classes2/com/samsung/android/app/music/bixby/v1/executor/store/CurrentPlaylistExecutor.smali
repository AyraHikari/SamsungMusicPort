.class public Lcom/samsung/android/app/music/bixby/v1/executor/store/CurrentPlaylistExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/store/CurrentPlaylistExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 27
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/store/CurrentPlaylistExecutor;->b:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 5
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SELECT_CURRENT_PLAYLIST"

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/store/CurrentPlaylistExecutor;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "key_checked_ids"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 34
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/store/CurrentPlaylistExecutor;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 36
    new-instance v3, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v0, v4}, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;-><init>(Landroid/app/Activity;[JZ)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p1, "ExceedMaxNumber"

    const-string v1, "Valid"

    const-string v2, "no"

    .line 38
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/store/CurrentPlaylistExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v4

    :cond_0
    return v1
.end method
