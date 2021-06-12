.class Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;
.super Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthenticationCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/accessory/SAAgentV2;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    return-void
.end method


# virtual methods
.method public onPeerAgentAuthenticated(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Received Authentication response"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->a:Lcom/samsung/android/sdk/accessory/SAAgentV2$b;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p1, "[SA_SDK]SAAgentV2"

    const-string v0, "onPeerAgentAuthenticated: mBackgroundWorker is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
