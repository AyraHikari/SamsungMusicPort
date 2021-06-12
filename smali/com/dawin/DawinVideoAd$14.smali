.class Lcom/dawin/DawinVideoAd$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/DawinVideoAd;->i()V
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

    iput-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 7

    const-string v0, "onPrepared"

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    const-string v0, "\uae30\ud0c0 \uc624\ub958"

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->x(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->x(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->E(Lcom/dawin/DawinVideoAd;)V

    if-eqz p1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media width : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", media height : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "greatest common measure : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/dawin/util/CommonUtils;->a(II)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->D(Lcom/dawin/DawinVideoAd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0, v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;I)I

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v0

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->F(Lcom/dawin/DawinVideoAd;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/dawin/a/a;->setCurrentOrientation(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->G(Lcom/dawin/DawinVideoAd;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->H(Lcom/dawin/DawinVideoAd;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v0

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->F(Lcom/dawin/DawinVideoAd;)I

    move-result v4

    iget-object v5, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v5}, Lcom/dawin/DawinVideoAd;->G(Lcom/dawin/DawinVideoAd;)I

    move-result v5

    iget-object v6, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v6}, Lcom/dawin/DawinVideoAd;->H(Lcom/dawin/DawinVideoAd;)I

    move-result v6

    :goto_0
    invoke-virtual {v0, v4, v5, v6}, Lcom/dawin/a/a;->a(III)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0, v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;I)I

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v0

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->F(Lcom/dawin/DawinVideoAd;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/dawin/a/a;->setCurrentOrientation(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->I(Lcom/dawin/DawinVideoAd;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->J(Lcom/dawin/DawinVideoAd;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v0

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->F(Lcom/dawin/DawinVideoAd;)I

    move-result v4

    iget-object v5, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v5}, Lcom/dawin/DawinVideoAd;->I(Lcom/dawin/DawinVideoAd;)I

    move-result v5

    iget-object v6, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v6}, Lcom/dawin/DawinVideoAd;->J(Lcom/dawin/DawinVideoAd;)I

    move-result v6

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->t(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    :try_start_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dawin/objects/AdInfos;->getChargeTime()I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    if-ge v0, p1, :cond_4

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getChargeTime()I

    move-result v4

    invoke-static {v0, v4}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;I)I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    add-int/lit16 v4, p1, -0x1f4

    invoke-static {v0, v4}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;I)I

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duration : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", chargetime : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->v(Lcom/dawin/DawinVideoAd;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / real chargetime : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/objects/AdInfos;->getChargeTime()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dawin/objects/AdInfos;->getChargeTime()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;I)I

    :goto_3
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;I)I

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/dawin/objects/AdInfos;->getQuarterTime(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;I)I

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dawin/objects/AdInfos;->getQuarterTime(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/dawin/DawinVideoAd;->h(Lcom/dawin/DawinVideoAd;I)I

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dawin/objects/AdInfos;->getQuarterTime(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/dawin/DawinVideoAd;->i(Lcom/dawin/DawinVideoAd;I)I

    :cond_5
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/a/a;->g()V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    const-string v0, "\uae30\ud0c0 \uc624\ub958"

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$14;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    :goto_4
    return-void
.end method
