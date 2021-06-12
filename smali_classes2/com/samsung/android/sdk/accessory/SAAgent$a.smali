.class final Lcom/samsung/android/sdk/accessory/SAAgent$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/samsung/android/sdk/accessory/SAAgent;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "[SA_SDK]SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid msg received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->e(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "[SA_SDK]SAAgent"

    const-string v2, "Retrieving agent id failed"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/d;->a()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->d(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    return-void

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->c(I)V

    return-void

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/os/Bundle;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->d(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->c(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->b(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/content/Intent;)V

    return-void

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->b([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->b(I)V

    return-void

    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->a([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(I)V

    return-void

    :pswitch_c
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->c(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    return-void

    :pswitch_d
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->b(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    return-void

    :pswitch_e
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string v0, "[SA_SDK]SAAgent"

    const-string v2, "Binding to Accessory Framework failed"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/d;->a()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
