.class public final Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "LaunchAppResponseExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 4
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->isLastState()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 87
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "Music"

    goto :goto_0

    :cond_0
    const-string v0, "GlobalMusic"

    :goto_0
    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v2, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_1

    .line 91
    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_2

    .line 92
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/HistoricalRuleId;->a()Lcom/samsung/android/app/music/bixby/v1/HistoricalRuleId;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getRuleId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/bixby/v1/HistoricalRuleId;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 94
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->a:Ljava/lang/String;

    const-string v0, "onCommandCompleted() - Should check the my music mode before execute root utterance."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v0, "NLG_PRECONDITION"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "SamsungMusic"

    const-string v1, "MymusicModeOn"

    const-string v2, "yes"

    .line 98
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v1, "NLG_PRECONDITION"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v1, "SamsungMusic"

    const-string v2, "UserSaidCancelOrNo"

    const-string v3, "yes"

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;)V

    goto :goto_1

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LAUNCH_APP"

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->a:Ljava/lang/String;

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

    .line 47
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onVerifyPreconditionFinished()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->a:Ljava/lang/String;

    const-string v1, "onVerifyPreconditionFinished() - null mCommand."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVerifyPreconditionFinished() - mCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-void
.end method

.method public sendPreconditionNlg(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V
    .locals 4
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->getNextCommand()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    if-nez v1, :cond_0

    .line 61
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->a:Ljava/lang/String;

    const-string v0, "sendPreconditionNlg() - null command."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->a:Ljava/lang/String;

    const-string v2, "sendPreconditionNlg()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    if-eqz v0, :cond_1

    .line 68
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->clearNextCommand()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    :cond_2
    :goto_0
    return-void
.end method
