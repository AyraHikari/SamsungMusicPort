.class Lcom/dawin/DawinVideoAd$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/DawinVideoAd;->d()V
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

    iput-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "onVideoStarted =============>"

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->l(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;Z)Z

    :try_start_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->m(Lcom/dawin/DawinVideoAd;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->n(Lcom/dawin/DawinVideoAd;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0, v1}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;Z)Z

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dawin/objects/AdInfos;->getImpressionTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dawin/objects/AdInfos;->getImpressionTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v0

    const/16 v2, 0x384

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getImpressionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&dawin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "A01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->p(Lcom/dawin/DawinVideoAd;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0, v1}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;Z)Z

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dawin/objects/AdInfos;->getStartTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dawin/objects/AdInfos;->getStartTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v0

    const/16 v1, 0x3e8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->getStartTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&dawin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "A01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->q(Lcom/dawin/DawinVideoAd;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dawin/objects/b;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->r(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->r(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dawin/objects/b;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "exAction VISIBLE"

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dawin/objects/b;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/a/a;->getCurrentState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/a/a;->e()V

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/a/a;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;Z)Z

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object p1

    const/16 v0, 0x578

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getEndTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    return-void
.end method

.method public a(Landroid/media/MediaPlayer;I)V
    .locals 2

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/a/a;->e()V

    :cond_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ube44\ub514\uc624 \uc624\ub958 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "onVideoSizeChange()"

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->t(Lcom/dawin/DawinVideoAd;)V

    return-void
.end method
