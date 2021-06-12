.class final Lcom/samsung/android/sdk/accessory/SAAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SAAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# instance fields
.field private a:Lcom/samsung/android/sdk/accessory/SAAgent;


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$1;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$1;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x800

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$1;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$a;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "onFrameworkDisconnected: mBackgroundWorker is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$1;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->g(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onFrameworkConnected() - Failed to register agent with message! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/d;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$1;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$a;->sendEmptyMessage(I)Z

    return-void
.end method
