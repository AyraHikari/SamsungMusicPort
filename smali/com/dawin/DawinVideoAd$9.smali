.class Lcom/dawin/DawinVideoAd$9;
.super Landroid/telephony/PhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dawin/DawinVideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/DawinVideoAd;


# direct methods
.method constructor <init>(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/DawinVideoAd$9;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$9;->a:Lcom/dawin/DawinVideoAd;

    :goto_0
    invoke-static {p1, v0}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;I)I

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$9;->a:Lcom/dawin/DawinVideoAd;

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$9;->a:Lcom/dawin/DawinVideoAd;

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$9;->a:Lcom/dawin/DawinVideoAd;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
