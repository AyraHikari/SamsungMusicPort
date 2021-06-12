.class final Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;
    }
.end annotation


# static fields
.field private static final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private static mKeyRunnable:Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 48
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->mKeyRunnable:Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static executeKeyEvent(I)V
    .locals 1

    .line 130
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->mKeyRunnable:Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;->setKeyEvent(I)V

    .line 131
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->mExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->mKeyRunnable:Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static handleExtraCommand(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->handleExtraCommand(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Intent;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    return-void
.end method

.method static handleExtraCommand(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Intent;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V
    .locals 2
    .param p3    # Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "togglepause"

    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 60
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 61
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->c()V

    .line 63
    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->togglePlay()V

    goto/16 :goto_0

    :cond_1
    const-string v0, "play"

    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    .line 66
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->c()V

    .line 68
    :cond_2
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->play()V

    goto/16 :goto_0

    :cond_3
    const-string p3, "pause"

    .line 69
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 70
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->pause()V

    goto/16 :goto_0

    :cond_4
    const-string p3, "next"

    .line 71
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_6

    const-string p2, "force"

    .line 72
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 74
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->setSupposeToBePlaying(Z)V

    .line 76
    :cond_5
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->next()Z

    goto/16 :goto_0

    :cond_6
    const-string p3, "previous"

    .line 77
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    const-string p2, "force"

    .line 78
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 80
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->setSupposeToBePlaying(Z)V

    .line 84
    :cond_7
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->prev(Z)Z

    goto/16 :goto_0

    :cond_8
    const-string p3, "seek"

    .line 85
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    const-string p2, "seek_position"

    const-wide/16 v0, 0x0

    .line 86
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 87
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->seek(J)J

    goto/16 :goto_0

    :cond_9
    const-string p3, "fastforward_down"

    .line 88
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/16 v0, 0x64

    if-eqz p3, :cond_a

    .line 89
    invoke-interface {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->startForward(I)V

    goto/16 :goto_0

    :cond_a
    const-string p3, "fastforward_up"

    .line 90
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 91
    invoke-interface {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stopForwardRewind(I)V

    goto/16 :goto_0

    :cond_b
    const-string p3, "rewind_down"

    .line 92
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 93
    invoke-interface {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->startRewind(I)V

    goto/16 :goto_0

    :cond_c
    const-string p3, "rewind_up"

    .line 94
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 95
    invoke-interface {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stopForwardRewind(I)V

    goto :goto_0

    :cond_d
    const-string p3, "fastforward"

    .line 96
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 97
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->forward()V

    goto :goto_0

    :cond_e
    const-string p3, "rewind"

    .line 98
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 99
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->rewind()V

    goto :goto_0

    :cond_f
    const-string p3, "stop"

    .line 100
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 101
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stop()V

    goto :goto_0

    :cond_10
    const-string p3, "enqueue"

    .line 102
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    const-string p2, "list"

    .line 103
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p1

    const/4 p2, 0x4

    .line 106
    invoke-static {p2, v1, p1, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->create(II[JZI)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;

    move-result-object p1

    .line 105
    invoke-interface {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->addQueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V

    goto :goto_0

    :cond_11
    const-string p3, "openList"

    .line 107
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 108
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->openQueueFromIntent(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Intent;)V

    goto :goto_0

    :cond_12
    const-string p0, "volume_up"

    .line 109
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/16 p0, 0x18

    .line 110
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->executeKeyEvent(I)V

    goto :goto_0

    :cond_13
    const-string p0, "volume_down"

    .line 111
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/16 p0, 0x19

    .line 112
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->executeKeyEvent(I)V

    :cond_14
    :goto_0
    return-void
.end method

.method private static openQueueFromIntent(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "listQueryKey"

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "list"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v3

    const-string v0, "listPosition"

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "dmr_device"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "is_maintain_seek_position"

    const/4 v1, 0x1

    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v0, "seek_position"

    const-wide/16 v8, 0x0

    .line 123
    invoke-virtual {p1, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v0, "playing"

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    move-object v1, p0

    .line 125
    invoke-interface/range {v1 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->openQueueFromIntent(Ljava/lang/String;[JIZLjava/lang/String;ZJ)V

    return-void
.end method
