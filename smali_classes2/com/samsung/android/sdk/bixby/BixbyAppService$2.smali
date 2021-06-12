.class Lcom/samsung/android/sdk/bixby/BixbyAppService$2;
.super Lcom/samsung/android/bixby/agent/IBixbyAgentAppService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/bixby/BixbyAppService;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/bixby/BixbyAppService;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-direct {p0}, Lcom/samsung/android/bixby/agent/IBixbyAgentAppService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendCommand(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BixbyAppService Command From EM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BixbyAppService Command From EM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sendCommand: Unauthorized access detected!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->c(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCallback(Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BixbyAppService setCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "setCallback: Unauthorized access detected!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a(Lcom/samsung/android/sdk/bixby/BixbyAppService;Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;)Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    return-void
.end method
