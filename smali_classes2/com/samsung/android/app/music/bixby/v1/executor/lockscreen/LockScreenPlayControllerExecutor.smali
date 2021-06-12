.class public Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "LockScreenPlayControllerExecutor"


# instance fields
.field private final b:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

.field private d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

.field private e:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

.field private f:Z

.field private g:Z

.field private final h:Landroid/content/ServiceConnection;

.field private final i:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

.field private j:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->f:Z

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->g:Z

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->h:Landroid/content/ServiceConnection;

    .line 199
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->i:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    .line 264
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$3;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->j:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->i:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 153
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 p3, 0x1

    invoke-direct {p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->j()V

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->c()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->f:Z

    return p1
.end method

.method private b()V
    .locals 4

    .line 69
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startPlayerService()V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->h:Landroid/content/ServiceConnection;

    const-class v2, Lcom/samsung/android/app/music/service/PlayerService;

    const/4 v3, 0x0

    .line 71
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;Z)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->d()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->i:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unregisterCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->g:Z

    return p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pause"

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->e()V

    goto :goto_0

    :cond_0
    const-string v1, "Play"

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->f()V

    goto :goto_0

    :cond_1
    const-string v1, "PlayNextSong"

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->g()V

    goto :goto_0

    :cond_2
    const-string v1, "PlayPreviousSong"

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->h()V

    :cond_3
    :goto_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->l()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->pause()V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayingSong"

    const-string v3, "Exist"

    if-eqz v0, :cond_1

    const-string v0, "yes"

    goto :goto_0

    :cond_1
    const-string v0, "no"

    :goto_0
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->f:Z

    return p0
.end method

.method private f()V
    .locals 4

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->l()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PausedSong"

    const-string v2, "Exist"

    const-string v3, "no"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->i()V

    .line 110
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->j()V

    return-void
.end method

.method private g()V
    .locals 4

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->k()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NextSong"

    const-string v2, "Exist"

    const-string v3, "no"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->i()V

    .line 121
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playNext()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->c()V

    return-void
.end method

.method private h()V
    .locals 4

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->k()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviousSong"

    const-string v2, "Exist"

    const-string v3, "no"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->i()V

    .line 132
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playPrevious()V

    return-void
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->g:Z

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->j:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->a()V

    return-void
.end method

.method private j()V
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->g:Z

    .line 146
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->f:Z

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->release()V

    :cond_0
    return-void
.end method

.method private k()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method private l()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method private m()Z
    .locals 3

    .line 176
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a:Ljava/lang/String;

    const-string v2, "isRadio extra is null."

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 181
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PLAYER_CONTROL"

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a:Ljava/lang/String;

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

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->b()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
