.class public final Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "MoveMainTabExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/samsung/android/app/music/player/PlayerLaunchable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;Lcom/samsung/android/app/music/player/PlayerLaunchable;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/ui/TabControllable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->c:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    .line 39
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->d:Lcom/samsung/android/app/music/player/PlayerLaunchable;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "SearchTab"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "DiscoverTab"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 4
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performCommand() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->d:Lcom/samsung/android/app/music/player/PlayerLaunchable;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/player/PlayerLaunchable;->dismissFullPlayer(Z)V

    .line 84
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->c:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;->selectTab(II)V

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->isLastState()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 87
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v2, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 6
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "MOVE_MAIN_TAB"

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->a:Ljava/lang/String;

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

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiscoverTab"

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->a:Ljava/lang/String;

    const-string v2, "onCommandCompleted() - Should check the my music mode before execute follow-up utterance."

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v2, "NLG_PRECONDITION"

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v2, "SamsungMusic"

    const-string v3, "MymusicModeOn"

    const-string v4, "yes"

    .line 54
    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v3, "NLG_PRECONDITION"

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v3, "SamsungMusic"

    const-string v4, "UserSaidCancelOrNo"

    const-string v5, "yes"

    .line 58
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor$1;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    invoke-interface {v3, v0, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;)V

    return v1

    .line 73
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
