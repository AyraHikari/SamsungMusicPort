.class Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;)Lcom/samsung/android/app/music/settings/AutoOffControllable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/settings/AutoOffControllable;->y_()Z

    move-result v0

    .line 53
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v2, "Settings"

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v2, "SleepTimer"

    const-string v3, "Valid"

    if-eqz v0, :cond_0

    const-string v0, "yes"

    goto :goto_0

    :cond_0
    const-string v0, "no"

    .line 54
    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method
