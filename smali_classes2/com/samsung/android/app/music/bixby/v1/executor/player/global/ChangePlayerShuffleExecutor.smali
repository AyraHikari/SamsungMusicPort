.class public final Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "ChangePlayerShuffleExecutor"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V
    .locals 0
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->b:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)I
    .locals 1

    if-nez p1, :cond_0

    .line 117
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->a:Ljava/lang/String;

    const-string v0, "getActiveQueueType() - MusicExtras is null."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 120
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "ShuffleOn"

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(ILcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)Landroid/os/Bundle;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 102
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object p1

    const-string p2, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 93
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p1, "SameState"

    const-string v1, "Valid"

    if-eqz p2, :cond_0

    const-string p2, "no"

    goto :goto_0

    :cond_0
    const-string p2, "yes"

    .line 94
    :goto_0
    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 111
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;I)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object p2

    .line 87
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getBundle()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.samsung.android.app.music.core.state.queue.RADIO_PLAYLIST_ID"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 5
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "CHANGE_SHUFFLE"

    .line 46
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 47
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->a:Ljava/lang/String;

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

    .line 49
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    .line 50
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->b:Landroid/content/Context;

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->a(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 58
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v0, "Music"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "RadioTab"

    const-string v1, "Playing"

    const-string v2, "yes"

    .line 59
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v3

    .line 65
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->a(Ljava/lang/String;)I

    move-result v4

    .line 66
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->a(ILcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "extra.shuffle_state"

    .line 69
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq v4, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 73
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v2

    if-ne v4, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->setShuffle(Z)V

    .line 75
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->a(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v3

    :cond_6
    return v1
.end method
