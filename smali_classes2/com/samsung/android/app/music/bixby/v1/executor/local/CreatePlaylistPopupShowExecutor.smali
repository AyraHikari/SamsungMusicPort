.class public final Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "CreatePlaylistPopupShowExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/support/v4/app/Fragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;->c:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 5
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "CREATE_PLAYLIST_POPUP"

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "createPlaylist"

    .line 48
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 49
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/DialogFragment;

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {v3}, Landroid/support/v4/app/DialogFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;->a:Ljava/lang/String;

    const-string v0, "execute() - Dialog fragment is already shown on activity."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    const/4 p1, 0x0

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string p1, "key_checked_ids"

    .line 61
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    .line 64
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;-><init>()V

    if-eqz p1, :cond_2

    .line 66
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key_ids"

    .line 67
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 68
    invoke-virtual {v1, v3}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;->c:Landroid/support/v4/app/Fragment;

    const/16 v3, 0x7c0

    .line 70
    invoke-virtual {v1, p1, v3}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;->c:Landroid/support/v4/app/Fragment;

    const/16 v3, 0x7bf

    invoke-virtual {v1, p1, v3}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 75
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method
