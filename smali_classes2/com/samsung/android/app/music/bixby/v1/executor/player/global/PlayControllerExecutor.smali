.class public final Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "PlayControllerExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

.field private e:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

.field private f:Z

.field private g:Z

.field private final h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

.field private final i:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->f:Z

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->g:Z

    .line 154
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 219
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->i:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 49
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 3

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p1, "PausedSong"

    const-string v1, "Exist"

    const-string v2, "no"

    .line 89
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->d(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    .line 94
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->pause()V

    .line 80
    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p1, "PlayingSong"

    const-string v2, "Exist"

    if-eqz v0, :cond_1

    const-string v0, "yes"

    goto :goto_0

    :cond_1
    const-string v0, "no"

    .line 81
    :goto_0
    invoke-virtual {v1, p1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->g:Z

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-object p0
.end method

.method private b(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 3

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p1, "NextSong"

    const-string v1, "Exist"

    const-string v2, "no"

    .line 101
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void

    .line 106
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->d(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    .line 107
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playNext()V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-object p0
.end method

.method private c(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 3

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p1, "PreviousSong"

    const-string v1, "Exist"

    const-string v2, "no"

    .line 113
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->d(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    .line 119
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playPrevious()V

    return-void
.end method

.method private c()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->g:Z

    .line 143
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->f:Z

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->release()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->d()V

    return-void
.end method

.method private d(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 1

    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->g:Z

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    if-nez p1, :cond_0

    .line 135
    new-instance p1, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->i:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->a()V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->f:Z

    return p0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PLAYER_CONTROL"

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->a:Ljava/lang/String;

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

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pause"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 59
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->a(Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v1, "Play"

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return v2

    :cond_1
    const-string v1, "PlayNextSong"

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->b(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return v2

    :cond_2
    const-string v1, "PlayPreviousSong"

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->c(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
