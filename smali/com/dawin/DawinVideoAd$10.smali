.class Lcom/dawin/DawinVideoAd$10;
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

    iput-object p1, p0, Lcom/dawin/DawinVideoAd$10;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCallStateChanged : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$10;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->k(Lcom/dawin/DawinVideoAd;)I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    if-ne p1, v0, :cond_0

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$10;->a:Lcom/dawin/DawinVideoAd;

    invoke-virtual {p2}, Lcom/dawin/DawinVideoAd;->onPause()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/dawin/DawinVideoAd$10;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->k(Lcom/dawin/DawinVideoAd;)I

    move-result p2

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_1

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$10;->a:Lcom/dawin/DawinVideoAd;

    invoke-virtual {p2}, Lcom/dawin/DawinVideoAd;->onResume()V

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/dawin/DawinVideoAd$10;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2, p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;I)I

    return-void
.end method
