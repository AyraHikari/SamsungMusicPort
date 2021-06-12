.class Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 48
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayStarted() - success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 50
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor$1;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ListItem"

    const-string v1, "Exist"

    const-string v2, "yes"

    .line 52
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "playOrder"

    const-string v1, "Valid"

    const-string v2, "yes"

    .line 55
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_1

    .line 61
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "execute() - Fail to play card view."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor$1;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "ListItem"

    const-string v1, "Exist"

    const-string v2, "no"

    .line 63
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_1
    return-void
.end method
