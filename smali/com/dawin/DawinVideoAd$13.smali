.class Lcom/dawin/DawinVideoAd$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/http/a$a;


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

    iput-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    const/16 p3, 0x384

    const/16 v0, 0x640

    if-eq p1, p3, :cond_10

    const/16 p3, 0x3e8

    if-eq p1, p3, :cond_f

    const/16 p3, 0x44c

    if-eq p1, p3, :cond_e

    const/16 p3, 0x4b0

    if-eq p1, p3, :cond_d

    const/16 p3, 0x514

    if-eq p1, p3, :cond_c

    const/16 p3, 0x578

    if-eq p1, p3, :cond_9

    const/16 p3, 0x5dc

    if-eq p1, p3, :cond_7

    const/16 p3, 0x6a4

    if-eq p1, p3, :cond_2

    const/16 p2, 0x76c

    if-eq p1, p2, :cond_1

    const/16 p2, 0x7d0

    if-eq p1, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&ecd=80&dawin="

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&ecd=70&dawin="

    goto/16 :goto_2

    :cond_2
    const/16 p1, -0x64

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->q(Lcom/dawin/DawinVideoAd;)V

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    const-string p2, "\uc778\ud130\ub137 \uc5f0\uacb0 \uc624\ub958"

    :goto_0
    iget-object p3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p3}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->q(Lcom/dawin/DawinVideoAd;)V

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_b

    const/16 p1, -0xc8

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    const-string p2, "xml \ud30c\uc2f1 \uc624\ub958"

    iget-object p3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p3}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&ecd=11&dawin="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "A01"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const/16 p1, 0xcc

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    const-string p2, "\uad11\uace0 \uc5c6\uc74c"

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&ecd=10&dawin="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "A01"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    const-string p2, "\uc11c\ubc84 \uc5f0\uacb0 \uc624\ub958"

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&ecd=90&dawin="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "A01"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_8
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdSkiped(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&ecd=60&dawin="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "A01"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_a
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdVideoComplete(Ljava/lang/String;)V

    :cond_b
    :goto_1
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_3

    :cond_c
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&ecd=50&dawin="

    goto/16 :goto_2

    :cond_d
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&ecd=40&dawin="

    goto :goto_2

    :cond_e
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&ecd=30&dawin="

    goto :goto_2

    :cond_f
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&ecd=20&dawin="

    goto :goto_2

    :cond_10
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&ecd=21&dawin="

    :goto_2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "A01"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_11
    :goto_3
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestSuccess : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;Z)Z

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdVideoProgress(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "Request ad info receive success!!"

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;Z)Z

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1, v0}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;Z)Z

    :try_start_0
    new-instance p1, Lcom/dawin/http/parser/a;

    invoke-direct {p1, p2}, Lcom/dawin/http/parser/a;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-virtual {p1}, Lcom/dawin/http/parser/a;->a()Lcom/dawin/objects/AdInfos;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;Lcom/dawin/objects/AdInfos;)Lcom/dawin/objects/AdInfos;

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/objects/AdInfos;->isParsingProblemOccured()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/objects/AdInfos;->getAdId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "-1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dawin/objects/AdInfos;->getSessionKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1, v0}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;I)I

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdLoaded(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/http/parser/ExtensionInfoParser;->getExtensionBitmap()Lcom/dawin/objects/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/objects/a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/http/parser/ExtensionInfoParser;->getExtensionBitmap()Lcom/dawin/objects/a;

    move-result-object p1

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->D(Lcom/dawin/DawinVideoAd;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/dawin/objects/a;->a(Landroid/content/Context;)V

    :cond_1
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/http/parser/ExtensionInfoParser;->getIsAvailable()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dawin/http/parser/ExtensionInfoParser;->getExtensionInfo()Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dawin/http/parser/ExtensionInfoParser;->getExtensionBitmap()Lcom/dawin/objects/a;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;Ljava/util/ArrayList;Lcom/dawin/objects/a;)V

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    const-string p2, "\uad11\uace0 \uc5c6\uc74c"

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->q(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_1

    :cond_4
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->q(Lcom/dawin/DawinVideoAd;)V

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    const-string p2, "\uad11\uace0 \uc218\uc2e0 \uc624\ub958"

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    nop

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    const-string p2, "SDK \uc624\ub958"

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdSkiped(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdVideoComplete(Ljava/lang/String;)V

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    goto :goto_1

    :sswitch_4
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdVideoThirdQuartile(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdVideoMidpoint(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_6
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdVideoFirstQuartile(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_7
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdVideoStarted(Ljava/lang/String;)V

    :cond_7
    :goto_1
    :sswitch_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_7
        0x3e8 -> :sswitch_8
        0x44c -> :sswitch_6
        0x4b0 -> :sswitch_5
        0x514 -> :sswitch_4
        0x578 -> :sswitch_3
        0x5dc -> :sswitch_2
        0x640 -> :sswitch_8
        0x6a4 -> :sswitch_1
        0x76c -> :sswitch_0
        0x7d0 -> :sswitch_8
    .end sparse-switch
.end method
