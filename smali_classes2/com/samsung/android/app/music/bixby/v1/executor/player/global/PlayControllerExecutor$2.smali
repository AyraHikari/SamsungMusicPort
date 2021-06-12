.class Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTimeOut() can\'t handle state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_1

    .line 229
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "CurrentSongInfo"

    const-string v2, "Exist"

    const-string v3, "no"

    .line 230
    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->d(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)V

    return-void
.end method
