.class Lcom/dawin/DawinVideoAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/DawinVideoAd;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/dawin/DawinVideoAd;


# direct methods
.method constructor <init>(Lcom/dawin/DawinVideoAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/DawinVideoAd$2;->e:Lcom/dawin/DawinVideoAd;

    iput-object p2, p0, Lcom/dawin/DawinVideoAd$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dawin/DawinVideoAd$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dawin/DawinVideoAd$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/dawin/DawinVideoAd$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$2;->e:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$2;->e:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$2;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$2;->e:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdClickThru(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$2;->b:Ljava/lang/String;

    const/16 p2, 0x7d0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$2;->b:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$2;->e:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$2;->e:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->K(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&pt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$2;->e:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->L(Lcom/dawin/DawinVideoAd;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&dawin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "A01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$2;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$2;->c:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$2;->e:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$2;->e:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->K(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&pt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$2;->e:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->L(Lcom/dawin/DawinVideoAd;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&dawin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "A01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$2;->e:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->D(Lcom/dawin/DawinVideoAd;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/dawin/DawinVideoAd$2;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/dawin/util/CommonUtils;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$2;->e:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->D(Lcom/dawin/DawinVideoAd;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\uc804\ud654 \uae30\ub2a5\uc744 \uc774\uc6a9\ud560 \uc218 \uc5c6\ub294 \uc0c1\ud0dc\uc785\ub2c8\ub2e4."

    const-string v3, "\ud655\uc778"

    const/4 v4, 0x0

    new-instance v5, Lcom/dawin/DawinVideoAd$2$1;

    invoke-direct {v5, p0}, Lcom/dawin/DawinVideoAd$2$1;-><init>(Lcom/dawin/DawinVideoAd$2;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const p2, 0x102000b

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    return-void
.end method
