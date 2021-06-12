.class public final Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "LaunchPlayerExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/player/ISlidePlayer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

.field private final e:Lcom/samsung/android/app/music/player/PlayerSceneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/player/ISlidePlayer;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/player/ISlidePlayer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->e:Lcom/samsung/android/app/music/player/PlayerSceneStateListener;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->c:Lcom/samsung/android/app/music/player/ISlidePlayer;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->d:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 4

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->isLastState()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p1, "Queue"

    const-string v2, "Empty"

    const-string v3, "no"

    .line 77
    invoke-virtual {v0, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;)Lcom/samsung/android/app/music/player/ISlidePlayer;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->c:Lcom/samsung/android/app/music/player/ISlidePlayer;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->d:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-object p1
.end method

.method private b()Z
    .locals 1

    .line 70
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 5
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LAUNCH_PLAYER"

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->a:Ljava/lang/String;

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

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->b()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->c:Lcom/samsung/android/app/music/player/ISlidePlayer;

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/ISlidePlayer;->isFullPlayerActive()Z

    move-result v0

    .line 48
    sget-object v1, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute() - Start full player(active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    goto :goto_1

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->d:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->c:Lcom/samsung/android/app/music/player/ISlidePlayer;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->e:Lcom/samsung/android/app/music/player/PlayerSceneStateListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/player/ISlidePlayer;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->c:Lcom/samsung/android/app/music/player/ISlidePlayer;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/music/player/ISlidePlayer;->launchFullPlayer(Z)V

    goto :goto_1

    .line 57
    :cond_1
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->a:Ljava/lang/String;

    const-string v0, "execute() - Queue is empty."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_2

    const-string v0, "Music"

    goto :goto_0

    :cond_2
    const-string v0, "GlobalMusic"

    :goto_0
    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "Queue"

    const-string v3, "Empty"

    const-string v4, "yes"

    .line 60
    invoke-virtual {p1, v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v3, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_1
    return v2

    :cond_3
    return v1
.end method
