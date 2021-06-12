.class Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->d(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->d(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTimeOut() can\'t handle state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    const-string v2, "CurrentSongInfo"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->f(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->g(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)V

    :goto_0
    return-void
.end method
