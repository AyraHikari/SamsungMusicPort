.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UPCallbackHandler"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V
    .locals 0

    .line 808
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 809
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 814
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "SamsungBilling"

    const-string v2, "handleMessage v.20104, data is not null"

    .line 816
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RESPONSE_CODE"

    .line 817
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "RESPONSE_MESSAGE"

    .line 818
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SamsungBilling"

    .line 819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage v.20104, responseCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", responseMessage ="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 828
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    const-string v1, "SamsungBilling"

    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle UP callback. v20104, unknown message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    const-string p1, "SamsungBilling"

    const-string v1, "handle UP callback. v20104 Handler : UPHelper.UP_CLIENT_FAIL"

    .line 837
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string p1, "SamsungBilling"

    const-string v0, "handle UP callback. v20104, UPHelper.UP_CLIENT_OK"

    .line 831
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string p1, "SamsungBilling"

    const-string v1, "handle UP callback. v20104, UPHelper.AIDL_RESULT_ERROR"

    .line 847
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string p1, "SamsungBilling"

    const-string v1, "handle UP callback. v20104, UPHelper.AIDL_RESULT_FAIL"

    .line 842
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_0

    .line 858
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "SamsungBilling"

    const-string v0, "handleMessage : data is null!"

    .line 823
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;->a:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method
