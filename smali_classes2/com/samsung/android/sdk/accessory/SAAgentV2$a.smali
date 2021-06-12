.class final Lcom/samsung/android/sdk/accessory/SAAgentV2$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SAAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/sdk/accessory/SAAgentV2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$a;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$a;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$a;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x800

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$a;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "onFrameworkDisconnected: mBackgroundWorker is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$a;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->i(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

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

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$a;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->sendEmptyMessage(I)Z

    return-void
.end method
