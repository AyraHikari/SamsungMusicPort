.class final Lcom/samsung/android/sdk/accessory/SAAgent$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SASocket$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/accessory/SAAgent;


# virtual methods
.method public final a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 3

    const/16 v0, 0x800

    if-ne p2, v0, :cond_0

    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "Framework disconnected during connection process!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    if-eqz v0, :cond_2

    const/16 v0, 0x40a

    if-ne p2, v0, :cond_1

    const/16 p2, 0x409

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$a;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const-string v0, "[SA_SDK]SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection attempt failed wih peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$a;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$a;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    const-string p1, "[SA_SDK]SAAgent"

    const-string p2, "onConnectionFailure: mBackgroundWorker is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->f(Lcom/samsung/android/sdk/accessory/SAAgent;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->f(Lcom/samsung/android/sdk/accessory/SAAgent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "[SA_SDK]SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection success with peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->c(I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
