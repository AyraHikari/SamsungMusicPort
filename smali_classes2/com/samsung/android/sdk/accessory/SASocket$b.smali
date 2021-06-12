.class final Lcom/samsung/android/sdk/accessory/SASocket$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SASocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/sdk/accessory/SASocket;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$b;->a:Lcom/samsung/android/sdk/accessory/SASocket;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$b;->a:Lcom/samsung/android/sdk/accessory/SASocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$b;->a:Lcom/samsung/android/sdk/accessory/SASocket;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->a(Lcom/samsung/android/sdk/accessory/SASocket;IILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$b;->a:Lcom/samsung/android/sdk/accessory/SASocket;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->a(Lcom/samsung/android/sdk/accessory/SASocket;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$b;->a:Lcom/samsung/android/sdk/accessory/SASocket;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->a(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
