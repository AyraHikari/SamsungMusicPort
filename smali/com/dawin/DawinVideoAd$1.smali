.class Lcom/dawin/DawinVideoAd$1;
.super Landroid/os/Handler;


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

    iput-object p1, p0, Lcom/dawin/DawinVideoAd$1;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x67

    if-ne p1, v0, :cond_3

    const-string p1, "AD_FINISH_AD_REQUEST_TIMEOUT"

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$1;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$1;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AD_FINISH_AD_REQUEST_TIMEOUT /  getCurrentPosition = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$1;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$1;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$1;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dawin/a/a;->setOnPreparedListener(Lcom/dawin/a/a$a;)V

    :cond_1
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$1;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$1;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    const-string v0, "\ub3d9\uc601\uc0c1 \uc218\uc2e0 \uc9c0\uc5f0"

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$1;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$1;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    :cond_3
    :goto_0
    return-void
.end method
