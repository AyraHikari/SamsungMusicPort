.class Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;
.super Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthenticationCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/accessory/SAAgent;


# virtual methods
.method public onPeerAgentAuthenticated(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "Received Authentication response"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$a;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p1, "[SA_SDK]SAAgent"

    const-string v0, "onPeerAgentAuthenticated: mBackgroundWorker is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
