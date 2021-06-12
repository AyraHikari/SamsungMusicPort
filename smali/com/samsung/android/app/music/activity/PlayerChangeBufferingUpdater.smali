.class Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater$ChangeToMediaPlayer;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PlayerChangeBufferingUpdater"


# instance fields
.field private final b:Landroid/content/DialogInterface$OnCancelListener;

.field private final c:Landroid/app/Activity;

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater$ChangeToMediaPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater$ChangeToMediaPlayer;-><init>(Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->b:Landroid/content/DialogInterface$OnCancelListener;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->c:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->c()V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Ui"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showProgressDialog() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->d:Landroid/app/ProgressDialog;

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->d:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->d:Landroid/app/ProgressDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 135
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->d:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->c:Landroid/app/Activity;

    const v1, 0x7f0b018e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->b:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ui"

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hideProgressDialog()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->d:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p1, "saved_instance_state_is_progress"

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->b()V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->c()V

    return-void
.end method

.method public onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "saved_instance_state_is_progress"

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->d:Landroid/app/ProgressDialog;

    .line 76
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 93
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->b()V

    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;->c()V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method
