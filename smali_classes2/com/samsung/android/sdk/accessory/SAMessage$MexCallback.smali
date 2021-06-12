.class Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;
.super Lcom/samsung/accessory/api/ISAMexCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MexCallback"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sdk/accessory/SAMessage;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public onReceived(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAMessage;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onMessageReceived(): SAMessage referecnce is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSent(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAMessage;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onMessageReceived(): SAMessage referecnce is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->c(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V

    return-void
.end method
