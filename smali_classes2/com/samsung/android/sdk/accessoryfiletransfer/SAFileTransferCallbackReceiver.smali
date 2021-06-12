.class Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;
.super Landroid/os/ResultReceiver;


# instance fields
.field private a:I

.field private b:[I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "CallBackJson"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const-string p1, "[SA_SDK]SAFileTransferCallbackReceiver"

    const-string p2, "Wrong resultCode"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p1, "[SA_SDK]SAFileTransferCallbackReceiver"

    const-string v2, "FT Error"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/accessory/safiletransfer/a/e;

    invoke-direct {p1}, Lcom/samsung/accessory/safiletransfer/a/e;-><init>()V

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/samsung/accessory/safiletransfer/a/e;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/a/e;->a()[I

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->b:[I

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/a/e;->b()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->b:[I

    invoke-virtual {p2, v2, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a([II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->d:Ljava/lang/String;

    return-void

    :pswitch_1
    const-string p1, "[SA_SDK]SAFileTransferCallbackReceiver"

    const-string v2, "FT Error"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/accessory/safiletransfer/a/d;

    invoke-direct {p1}, Lcom/samsung/accessory/safiletransfer/a/d;-><init>()V

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/samsung/accessory/safiletransfer/a/d;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/a/d;->a()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/a/d;->b()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    iget v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    invoke-virtual {p2, v2, v1, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a(ILjava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->d:Ljava/lang/String;

    return-void

    :pswitch_2
    new-instance p1, Lcom/samsung/accessory/safiletransfer/a/f;

    invoke-direct {p1}, Lcom/samsung/accessory/safiletransfer/a/f;-><init>()V

    :try_start_2
    invoke-virtual {p1, p2}, Lcom/samsung/accessory/safiletransfer/a/f;->a(Ljava/lang/Object;)V

    const-string p2, "[SA_SDK]SAFileTransferCallbackReceiver"

    const-string v1, "Transfer Complete"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/a/f;->a()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/a/f;->b()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/a/f;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    iget v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->c:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v1, v2, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a(ILjava/lang/String;I)V

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    iget v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->d:Ljava/lang/String;

    goto :goto_2

    :goto_3
    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    :pswitch_3
    new-instance p1, Lcom/samsung/accessory/safiletransfer/a/g;

    invoke-direct {p1}, Lcom/samsung/accessory/safiletransfer/a/g;-><init>()V

    :try_start_3
    invoke-virtual {p1, p2}, Lcom/samsung/accessory/safiletransfer/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/a/g;->a()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/a/g;->b()J

    move-result-wide p1

    long-to-int p1, p1

    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    iget v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a(II)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
